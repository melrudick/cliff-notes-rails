class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :crag

end



# show user's comments with flag above each comment
