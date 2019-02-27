class AptsController < ApplicationController
  before_action :set_doctor

  def index
    @patients = Patient.all - @doctor.patients
    @apts = @doctor.apts.all
  end

  def new
    @patients = Patient.all - @doctor.patients
    @apt = @doctor.apts.new
  end

  def create
    @apt = @doctor.apts.new(apt_params)

    if @apt.save
      redirect_to doctor_apts_path(@doctor)
    else
      render :new
    end
  end

  def destroy
    @apt = @doctor.apts.find(params[:id])
    @apt.destroy
    redirect_to doctor_apts_path(@doctor)
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:doctor_id])
    end

    def apt_params
      params.require(:apt).permit(:date, :patient_id)
    end
end
