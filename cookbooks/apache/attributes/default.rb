default['apache']['package_name'] = if platform?('ubuntu')
                                      'apache2'
                                    else
                                      'httpd'
                                    end
