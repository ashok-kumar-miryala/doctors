class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :destroy]
  

  def index
    @doctors = Doctor.all
  end

  def show
      @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def edit 
    @doctor= Doctor.find(params[:id])
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def  today_appointments
    @doctor = Doctor.find(params[:id])
    @appointments = @doctor.appointments.where("date = ?", Date.today)

  end

    def  weekly_appointments
    @doctor = Doctor.find(params[:id])
    start_date = (Date.today - 1.week).beginning_of_week.beginning_of_day
    end_date   = (Date.today - 1.week).end_of_week.end_of_day
    @appointments = @doctor.appointments.where('time BETWEEN ? AND ?', start_date, end_date)

  end

  def patients
    @doctor = Doctor.find(params[:id])
    @patients = @doctor.patients
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :language, :specialty, :school, :phone)
    end
end
