# Used to run periodic tasks with Heroku background tasks:
# https://devcenter.heroku.com/articles/scheduler
desc "This task is called by the Heroku scheduler add-on"
task :update_twitter => :environment do
    puts "Updating feed..."
    ApplicationHelper.get_latest_tweet
    puts "done."
end
