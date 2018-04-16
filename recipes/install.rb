case node[:platform]
when "debian", "ubuntu"
  execute "apt-get update"
end

include_recipe "tmux"
