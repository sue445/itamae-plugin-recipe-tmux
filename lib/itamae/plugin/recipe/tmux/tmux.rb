directory "#{node[:tmux][:prefix]}/src"

check_command = "#{node[:tmux][:prefix]}/bin/tmux -V | grep #{node[:tmux][:version]}"

[
  "wget https://github.com/tmux/tmux/releases/download/#{node[:tmux][:version]}/tmux-#{node[:tmux][:version]}.tar.gz",
  "tar zxf tmux-#{node[:tmux][:version]}.tar.gz",
].each do |command|
  execute command do
    cwd "#{node[:tmux][:prefix]}/src"
    not_if check_command
  end
end

[
  "./configure --prefix=#{node[:tmux][:prefix]} LDFLAGS='-L#{node[:tmux][:prefix]}/lib' CFLAGS='-I#{node[:tmux][:prefix]}/include -I#{node[:tmux][:prefix]}/include/ncurses/'",
  "make",
  "make install",
].each do |command|
  execute command do
    cwd "#{node[:tmux][:prefix]}/src/tmux-#{node[:tmux][:version]}"
    not_if check_command
  end
end
