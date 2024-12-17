---@diagnostic disable: undefined-global

require("hs.ipc")

Logger = hs.logger.new("init", "info")

function SetMacbookMicrophone()
  local deviceName = "MacBook Pro Microphone"
  local inputDevice = hs.audiodevice.findInputByName(deviceName)

  if inputDevice then
    if hs.audiodevice.defaultInputDevice():name() == deviceName then
      Logger.i("Already using MacBook Microphone")
    else
      inputDevice:setDefaultInputDevice()
      Logger.i("Switched to MacBook Microphone")
    end
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

---

local slackAppName = "Slack"

hs.hotkey.bind({ "cmd" }, "K", function()
  local focusedApp = hs.application.frontmostApplication()
  if focusedApp:name() == slackAppName then
    hs.eventtap.keyStroke({ "cmd", "shift" }, "U")
  end
end)
