# This code can be put in any Python module, it does not require IPython
# itself to be running already.  It only creates the magics subclass but
# doesn't instantiate it yet.
import subprocess

from IPython.core.magic import (
    Magics,
    cell_magic,
    line_cell_magic,
    line_magic,
    magics_class,
)


# The class MUST call this class decorator at creation time
@magics_class
class LangMagics(Magics):
    @line_cell_magic
    def racket(self, line, cell=None):
        code = line or cell
        cmd = ['racket', '-I', 'racket/base', '-e', code]
        print(run_(cmd))

    @line_cell_magic
    def node(self, line, cell=None):
        code = line or cell
        cmd = ['node', '-e', code]
        print(run_(cmd))


def run_(cmd):
    result = subprocess.run(
        cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
    )
    out = [result.stdout, result.stderr]
    return '\n'.join(b.decode('utf-8').strip() for b in out)


# In order to actually use these magics, you must register them with a
# running IPython.
def load_ipython_extension(ipython):
    """
    Any module file that define a function named `load_ipython_extension`
    can be loaded via `%load_ext module.path` or be configured to be
    autoloaded by IPython at startup time.
    """
    # You can register the class itself without instantiating it.  IPython will
    # call the default constructor on it.
    ipython.register_magics(LangMagics)
