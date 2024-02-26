package 'tree' do
  action :install
end

file '/etc/motd' do
  content 'owned by.... the man'
end

