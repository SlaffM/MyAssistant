#config/unicorn.rb

# Set the working application directory
# working_directory '/path/to/your/app'
working_directory '/var/www/apps/MyAssistant'

# Unicorn PID file location
# pid '/path/to/pids/unicorn.pid'
pid '/var/www/apps/MyAssistant/pids/unicorn.pid'

# Path to logs
# stderr_path '/path/to/log/unicorn.log'
# stdout_path '/path/to/log/unicorn.log'
stderr_path '/var/www/apps/MyAssistant/log/unicorn.log'
stdout_path '/var/www/apps/MyAssistant/log/unicorn.log'

# Unicorn socket
# listen '/tmp/unicorn.[application name].sock'
listen '/tmp/unicorn.MyAssistant.sock'
listen 8080, :tcp_nopush => true


# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30