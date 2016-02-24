directory "#{node[:tmux][:prefix]}/src"

check_command = "ls #{node[:tmux][:prefix]}/lib/libevent.a"

[
  "wget https://github.com/libevent/libevent/releases/download/release-#{node[:libevent][:version]}-stable/libevent-#{node[:libevent][:version]}-stable.tar.gz",
  "tar zxf libevent-#{node[:libevent][:version]}-stable.tar.gz",
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
    cwd "#{node[:tmux][:prefix]}/src/libevent-#{node[:libevent][:version]}-stable"
    not_if check_command
  end
end
