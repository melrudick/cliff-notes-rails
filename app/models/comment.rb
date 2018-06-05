class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :crag_flag

end



# show user's comments with flag above each comment
