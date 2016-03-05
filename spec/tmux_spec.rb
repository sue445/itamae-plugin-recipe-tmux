describe file("#{node[:tmux][:prefix]}/bin/tmux") do
  it { should be_file }
  it { should be_executable }
end

describe command("#{node[:tmux][:prefix]}/bin/tmux -V") do
  its(:exit_status) { should eq 0 }
end
