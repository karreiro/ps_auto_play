# frozen_string_literal: true

require_relative "remote_play"

remote_play = RemotePlay.new

remote_play.activate
remote_play.press(key: :right) # Go to the right game
remote_play.press(key: :x) # Open it
remote_play.press(key: :o) # Jump
remote_play.wait(1)        # Wait
remote_play.press(key: :o) # Jump
