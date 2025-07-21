class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  def was_attached?
    self.image.attached?
  end
end
