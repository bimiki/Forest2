class Note < ApplicationRecord
  belongs_to :user
  acts_as_votable cacheable_strategy: :update_columns

  has_many :votes

  def enbedable_url
    youtube_id = description.split("?v=").last
    "https://www.youtube.com/embed/#{youtube_id}"
  end

end
