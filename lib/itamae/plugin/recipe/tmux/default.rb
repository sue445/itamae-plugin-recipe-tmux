username = run_command("whoami").stdout.strip

node.reverse_merge!(
  tmux: {
    prefix: "/home/#{username}/local"
  }
)

# via. http://minomawari.jp/2014/04/09/how-to-install-tmux-for-non-root-users/
# via. http://qiita.com/ikai/items/8cb49aad82351881a583
include_recipe "./libevent"
include_recipe "./ncurses"
include_recipe "./tmux"
