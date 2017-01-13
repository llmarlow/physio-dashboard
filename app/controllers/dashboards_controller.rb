class DashboardsController < ApplicationController
  def main
    @new_patients = Patient.where(created_at: Time.current.all_week).count
    @weekly_patients = Patient.joins(:appointments).where(:appointments => {:start_time => Time.current.all_week}).count
    #@income = Income.where(created_at: Time.current.all_week)
    @average_sessions = Appointment.count/ Patient.count
    @patients_on_books = Patient.joins(:appointments).where(:appointments => {:start_time => (Time.now)..(Time.now + 1.year)}).count
  end

  def lorna

  end

  def luke

  end
end