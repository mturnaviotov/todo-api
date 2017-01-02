class Todo < ApplicationRecord

  validates :comment, presence: true

end
