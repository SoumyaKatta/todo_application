class Todo < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 1, maximum: 100 }
  validates :description, length: { maximum: 500 }
  
  scope :completed, -> { where(completed: true) }
  scope :pending, -> { where(completed: false) }
  
  def completed?
    completed
  end
  
  def toggle_completion!
    update!(completed: !completed)
  end
end