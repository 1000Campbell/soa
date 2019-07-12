class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
end


RATINGS = {
    'one shit': '1_shit',
    'two shits': '2_shits',
    'three shits': '3_shits',
    'four shits': '4_shits',
    'five shits': '5_shits'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end