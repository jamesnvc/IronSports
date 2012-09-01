# Used to run periodic tasks with Heroku background tasks:
# https://devcenter.heroku.com/articles/scheduler
desc "This task is called by the Heroku scheduler add-on to update twitter feed"
task :update_twitter => :environment do
    puts "Updating feed..."
    ApplicationHelper.get_latest_tweet
    puts "done."
end

desc "Task called by scheduler to update list of valid member numbers"
task :update_member_numbers => :environment do
  puts "Updating valid number list..."
  ApplicationHelper.update_member_numbers
  puts "done."
end
