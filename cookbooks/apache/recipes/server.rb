package 'httpd'

file '/var/www/html/index.html' do
  content "<H1>Hello, world!<H1>
   <h2>PLATFORM: #{node['platform']}</h2>
   <h2>HOSTNAME: #{node['hostname']}</h2>
   <h2>MEMORY: #{node['memory']['total']}</h2>
   <h2>CPU Mhz: #{node['cpu']['0']['mhz']}</h2>
"
end

service 'httpd' do
  action [:enable, :start]
end
