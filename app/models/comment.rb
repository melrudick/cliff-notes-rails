class Comment < ApplicationRecord
  # belongs to user
  belongs_to :crag_flag

end



# show user's comments with flag above each comment
