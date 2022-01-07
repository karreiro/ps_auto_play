# PS auto play

PS auto play relies on the PS Remote Play app to control PS4/PS5 games. Currently, this repository is just a proof of concept for sending commands from macOS to PS4/PS5.

There's still some work pending as keyboard keys cannot trigger not all dual sense buttons.

Still, it's already interesting enough:

```ruby
remote_play = RemotePlay.new
remote_play.activate
remote_play.press(key: :right)
remote_play.press(key: :x)
remote_play.press(key: :o)
remote_play.wait(1)
remote_play.press(key: :o)
```

![](https://user-images.githubusercontent.com/1079279/148422072-6213f745-f80c-434e-bfa5-0e012660cb06.gif)
