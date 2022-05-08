import collections as co
import datetime as dt
import inspect
import itertools as it
import json
import math
import operator as op
import os
import re
import sys
import urllib.parse as up
from functools import lru_cache, reduce
from math import factorial as fact
from math import log

try:
    bp = breakpoint
except NameError:
    pass

if 'VIRTUAL_ENV' not in os.environ:
    try:
        import bs4
        import requests
        import numpy as np
        import pyperclip as clip
        import dateparser as dp
    except ImportError as e:
        print('ImportError:')
        print(e)
