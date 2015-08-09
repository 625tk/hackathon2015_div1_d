namespace :tweets do
  desc "generate tweet data"
  task :generate => :environment do
    Tweet.create text: "test data"
  end
end
