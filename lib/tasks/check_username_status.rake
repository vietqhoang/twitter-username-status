require_relative '../status_check'

task :check_username_status do
    StatusCheck.alert
    puts StatusCheck.username
end