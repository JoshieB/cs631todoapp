class Task < ApplicationRecord
  belongs_to :todo_list
  validates :title, :description, presence: true
end
