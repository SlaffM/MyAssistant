#config/unicorn.rb

# Set the working application directory
# working_directory '/path/to/your/app'
root = "/var/www/apps/MyAssistant/current"

#tmp_root = "/var/www/apps/MyAssistant"

working_directory root

# Unicorn PID file location
# pid '/path/to/pids/unicorn.pid'
pid "#{root}/tmp/pids/unicorn.pid"

# Path to logs
# stderr_path '/path/to/log/unicorn.log'
# stdout_path '/path/to/log/unicorn.log'
stderr_path "#{root}/tmp/log/unicorn.log"
stdout_path "#{root}/tmp/log/unicorn.log"

# Unicorn socket
# listen '/tmp/unicorn.[application name].sock'
listen "#{root}/tmp/unicorn.MyAssistant.sock"
#listen 8080, :tcp_nopush => true


# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30