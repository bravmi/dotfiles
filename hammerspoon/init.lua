---@diagnostic disable: undefined-global

require("hs.ipc")

Logger = hs.logger.new("init", "info")

function SetMacbookMicrophone()
  local deviceName = "MacBook Pro Microphone"
  local inputDevice = hs.audiodevice.findInputByName(deviceName)

  if inputDevice then
    inputDevice:setDefaultInputDevice()
    Logger.i("Switched to MacBook Microphone")
  else
    Logger.i("MacBook Microphone not found!")
  end
end

function AudioDeviceWatcherCallback(event)
  if event == "dev#" or event == "sOut" then
    hs.timer.doAfter(2, function()
      SetMacbookMicrophone()
    end)
  end
end

hs.audiodevice.watcher.setCallback(AudioDeviceWatcherCallback)
hs.audiodevice.watcher:start()
