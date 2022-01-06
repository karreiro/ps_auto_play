# frozen_string_literal: true

class RemotePlay
  KEY_CODES = {
    up: 126,
    down: 125,
    left: 123,
    right: 124,
    x: 36,
    o: 53,
  }

  def activate
    apple_script(<<-SCRIPT)
      tell application "PS Remote Play"
        activate
        delay .5
      end tell
    SCRIPT
  end

  def press(key:)
    return if key.nil?
    apple_script(<<-SCRIPT)
      tell application "PS Remote Play"
        tell application "System Events" to key code #{KEY_CODES[key]}
        delay .5
      end tell
    SCRIPT
  end

  def wait(t = 0.5)
    sleep(t)
  end

  private

  def apple_script(script)
    %x(osascript -e '#{script}')
  end
end
