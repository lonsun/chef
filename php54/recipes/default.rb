# Install php54 and required ancillary packages for CPAY Centralstation.
# The EPEL and IUS yum repositories are required for this to work on CentOS 5.
package 'php54.x86_64'
package 'php54-bcmath.x86_64'
package 'php54-gd.x86_64'
package 'php54-mbstring.x86_64'
package 'php54-mcrypt.x86_64'
package 'php54-mysqlnd.x86_64'
package 'php54-pdo.x86_64'

service 'httpd' do
  action :restart
end
