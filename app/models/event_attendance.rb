# frozen_string_literal: true

class EventAttendance < ApplicationRecord
  include Notifiable
  belongs_to :user
  belongs_to :event

  validates :user_id, uniqueness: { scope: :event_id }
  validate :woman_only_event, on: :create

  private

  def woman_only_event
    if event.only_woman == true && !(user.gender == "woman")
      errors.add(:base, "このイベントは女性限定です")
    end
  end
end
