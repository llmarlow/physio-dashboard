class DashboardsController < ApplicationController
  def main
    @new_patients = Patient.where(created_at: Time.current.all_week).count
    #@income = Income.where(created_at: Time.current.all_week)
  end
end
