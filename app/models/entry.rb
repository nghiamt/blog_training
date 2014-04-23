class Entry < ActiveRecord::Base
  belongs_to :user
  default_scope -> {order('created_at DESC')}
  validates :title, presence: true, length: {maximum: 140}
  validates :body, presence: true
  validates :user_id, presence: true
end
