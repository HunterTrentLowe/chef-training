#
# Cookbook:: mychef_client
# Recipe:: default
#
# Copyright:: 2024, The Authors, All Rights Reserved.
if platform?('windows')
  chef_client_scheduled_task 'Run as scheduled task'
else
  chef_client_cron 'Run as cron job'
end
