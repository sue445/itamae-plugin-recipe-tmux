directory "#{node[:tmux][:prefix]}/src"

check_command = "ls #{node[:tmux][:prefix]}/include/ncurses"

[
  "wget http://ftp.gnu.org/pub/gnu/ncurses/ncurses-#{node[:ncurses][:version]}.tar.gz",
  "tar zxf ncurses-#{node[:ncurses][:version]}.tar.gz",
].each do |command|
  execute command do
    cwd "#{node[:tmux][:prefix]}/src"
    not_if check_command
  end
end

[
  "./configure --prefix=#{node[:tmux][:prefix]}",
  "make",
  "make install",
].each do |command|
  execute command do
    cwd "#{node[:tmux][:prefix]}/src/ncurses-#{node[:ncurses][:version]}"
    not_if check_command
  end
end
