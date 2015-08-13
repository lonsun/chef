# Install httpd using system package
package 'httpd.x86_64'
package 'mod_ssl'

# Point document root to the vagrant share folder.  This should not fail if the link already exists.
# These are specific to a RHEL-type install.
directory '/var/www/html' do
  action [ :delete ]
  ignore_failure true
  notifies :create, 'link[/var/www/html]', :immediately
end

link '/var/www/html' do
  to '/vagrant/www'
  link_type :symbolic
  action :nothing
end

# Start httpd now and also make it startup on boot
service 'httpd' do
  action [ :start, :enable ]
end
