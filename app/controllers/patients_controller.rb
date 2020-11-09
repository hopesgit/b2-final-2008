class PatientsController < ApplicationController
  def index
    @patients = Patient.order(:age)
  end
end
