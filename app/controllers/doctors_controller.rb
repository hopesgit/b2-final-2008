class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
  end

  def delete
    doctor = Doctor.find(params[:doctor_id])
    doctor_patient = doctor.doctor_patients.find_by(patient_id: params[:patient_id])
    doctor_patient.delete
    redirect_to doctor_path(doctor)
  end
end
