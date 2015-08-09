namespace :tweets do
  desc "generate tweet data"
  task :generate => :environment do
    Tweet.create [
      {text: "test data 1"},
      {text: "test data 2"},
      {text: "test data 3"},
      {text: "test data 4"},
      {text: "test data 5"},
    ]
  end
end
