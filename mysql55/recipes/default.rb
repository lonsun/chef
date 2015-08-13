# Install mysql server, client, lib and devel packages using system packages.
package 'mysql55-mysql.x86_64'
package 'mysql55-mysql-server.x86_64'
package 'mysql55-mysql-devel.x86_64'

# Start mysql now and also make it startup on boot
service 'mysql55-mysqld' do
  action [ :start, :enable ]
end
