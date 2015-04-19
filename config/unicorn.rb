#config/unicorn.rb

# Set the working application directory
# working_directory '/path/to/your/app'
root = "/var/www/apps/MyAssistant/current"

tmp_root = "/var/www/apps/MyAssistant"

working_directory root

# Unicorn PID file location
# pid '/path/to/pids/unicorn.pid'
pid "#{tmp_root}/run/unicorn.pid"

# Path to logs
# stderr_path '/path/to/log/unicorn.log'
# stdout_path '/path/to/log/unicorn.log'
stderr_path "#{tmp_root}/log/unicorn.log"
stdout_path "#{tmp_root}/log/unicorn.log"

# Unicorn socket
# listen '/tmp/unicorn.[application name].sock'
listen "#{tmp_root}/socket/unicorn.MyAssistant.sock"
#listen 8080, :tcp_nopush => true


# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30



before_exec do |server|
  #ENV['BUNDLE_GEMFILE'] = "#{root}/Gemfile"
  ENV['SECRET_KEY_BASE'] = "a062b70a2800dab5d10d4b4b83e2d0a3dd157609100f1c2927770ec5d033c4144036da844997a166eb8970e6962dcac7be820c9711ef67a3a71f4b0f2a6ff659"
end