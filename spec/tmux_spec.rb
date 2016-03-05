describe file("#{node[:tmux][:prefix]}/bin/tmux") do
  it { should be_file }
  it { should be_executable }
end
