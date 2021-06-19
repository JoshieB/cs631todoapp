class TodoList < ApplicationRecord
  has_many :tasks
  belongs_to :user, :optional => true
  validates :title, :user_id, presence: true
end
