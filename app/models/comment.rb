class Comment < ActiveRecord::Base
  belongs_to :entry
  validates :content, :entry_id, :user_id, presence: true
end
