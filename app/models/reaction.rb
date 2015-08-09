class Reaction < ActiveRecord::Base
  def self.enc_count tweet_id
    Reaction.where(to_tweet_id: tweet_id, reaction_type: 1).count
  end
  def self.rest_count tweet_id
    Reaction.where(to_tweet_id: tweet_id, reaction_type: 2).count
  end
end
