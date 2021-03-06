default[:monit][:notify_email]          = "root@localhost"

default[:monit][:poll_period]           = 60
default[:monit][:poll_start_delay]      = 120

default[:monit][:mail_format][:subject] = "$SERVICE $EVENT"
default[:monit][:mail_format][:from]    = "monit@#{node['fqdn']}"
default[:monit][:mail_format][:message]    = <<-EOS
$EVENT Service $SERVICE

      Date:        $DATE
      Action:      $ACTION
      Host:        $HOST
      Description: $DESCRIPTION

Your faithful employee,
Monit
EOS

default[:monit][:mailserver][:host] = "localhost"
default[:monit][:mailserver][:port] = nil
default[:monit][:mailserver][:username] = nil
default[:monit][:mailserver][:password] = nil
default[:monit][:mailserver][:password_suffix] = nil

default[:monit][:port] = 3737
default[:monit][:address] = "localhost"
default[:monit][:ssl] = false
default[:monit][:cert] = "/etc/monit/monit.pem"
default[:monit][:allow] = ["localhost"]
