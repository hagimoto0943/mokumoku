# frozen_string_literal: true

class Events::AttendancesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    ActiveRecord::Base.transaction do
      event_attendance = current_user.attend(@event)
      (@event.attendees - [current_user] + [@event.user]).uniq.each do |user|
        NotificationFacade.attended_to_event(event_attendance, user)
      end
    end
    redirect_back(fallback_location: root_path, success: '参加の申込をしました')
    rescue => e
      redirect_back(fallback_location: root_path, success: '参加の申込に失敗しました')
  end

  def destroy
    @event = Event.find(params[:event_id])
    current_user.cancel_attend(@event)
    redirect_back(fallback_location: root_path, success: '申込をキャンセルしました')
  end
end
