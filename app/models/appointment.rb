class Appointment < ApplicationRecord
  belongs_to :patient

  scope :this_week, -> { where("date_trunc('week',start_time) = date_trunc('week',now())") }
  scope :this_month, -> { where("date_trunc('month',start_time) = date_trunc('month',now())") }
end
