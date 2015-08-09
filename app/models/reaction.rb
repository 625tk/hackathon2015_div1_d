class Reaction < ActiveRecord::Base
  def enc_count tweet_id
    Reaction.where(tweet_id: tweet_id, reaction_type: 1).count
  end
  def rest_count tweet_id
    Reaction.where(tweet_id: tweet_id, reaction_type: 2).count
  end
end
