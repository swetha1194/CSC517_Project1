class ReservationsController < ApplicationController
  include SessionsHelper
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :is_logged_in?
  #before_action :checkauth?, only: [:new, :edit, :update, :destroy]
  
  def checkauth?
    unless is_admin?
      flash[:privileges]="Not enough privileges"
      redirect_to root_path
    end
  end
  def is_logged_in?
    if current_user == nil
      flash[:privileges]="Please log in"
      redirect_to login_path
    end
  end 

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
    #@reservation.room_id = params[:id]
    #@reservation.member_id = current_user
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    require 'active_support/core_ext'
    @reservation = Reservation.new(reservation_params)
    #Same date constraints
    if @reservation.date!=@reservation.start_time.to_date
       redirect_to rooms_path, notice:'Dates should match' and return
    end
    #duration constraint=>automatically assigned
    if params[:duration].to_i==0
    @reservation.end_time=@reservation.start_time+60.minutes
    else 
    @reservation.end_time=@reservation.start_time+params[:duration].to_i.minutes
    end
    #Date Constraints
    if (@reservation.date < Date.current() || @reservation.date - Date.current() >7)
       redirect_to rooms_path, notice:'Failed due to date constraints' and return
    end
    #Time Constraints
    if (@reservation.start_time<Time.now)
       redirect_to rooms_path, notice: 'Failed due to time constraints' and return
    end
    #Member Overlap
    @reservations = Reservation.where("member_id=? AND date=? AND (start_time, end_time) overlaps (?,?)", @reservation.member_id, @reservation.date, @reservation.start_time, @reservation.end_time)
    if !(is_admin?)
    if !(@reservations.empty?)
       redirect_to rooms_path, notice: 'Failed due to member constraint' and return
    end
    end
    #Room Overlap
    @reservations = Reservation.where("room_id=? AND date=? AND (start_time, end_time) overlaps (?,?)", @reservation.room_id, @reservation.date, @reservation.start_time, @reservation.end_time)
    if !(@reservations.empty?)
       redirect_to rooms_path, notice: 'Failed due to room overlap' and return
    end
    respond_to do |format|
            if @reservation.save
              if !params[:emails].blank?
              temp_emails = params[:emails] #.split(',').strip(' ')
              UserMailer.invite_email(temp_emails, @reservation).deliver
              end
              format.html { redirect_to @reservation, notice: @reservation.end_time}
              format.json { render :show, status: :created, location: @reservation }
            else
              format.html { redirect_to rooms_url }
              format.json { render json: @reservation.errors, status: :unprocessable_entity }
              end
            end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    #@reservation = Reservation.new(reservation_params)
    #Same date constraints
    if @reservation.date!=@reservation.start_time.to_date
       redirect_to rooms_path, notice:'Dates should match' and return
    end
    #duration constraint=>automatically assigned
    if params[:duration].to_i==0
    @reservation.end_time=@reservation.start_time+60.minutes
    else 
    @reservation.end_time=@reservation.start_time+params[:duration].to_i.minutes
    end
    #Date Constraints
    if (@reservation.date < Date.current() || @reservation.date - Date.current() >7)
       redirect_to rooms_path, notice:'Failed due to date constraints' and return
    end
    #Time Constraints
    if (@reservation.start_time<Time.now)
       redirect_to rooms_path, notice: 'Failed due to time constraints' and return
    end
    #Member Overlap
    @reservations = Reservation.where("member_id=? AND date=? AND (start_time, end_time) overlaps (?,?) AND id <> ?", @reservation.member_id, @reservation.date, @reservation.start_time, @reservation.end_time,@reservation.id)
    if !(is_admin?)
    if !(@reservations.empty?)
       redirect_to rooms_path, notice: 'Failed due to member constraint' and return
    end
    end
    #Room Overlap
    @reservations = Reservation.where("room_id=? AND date=? AND (start_time, end_time) overlaps (?,?) AND id<> ?", @reservation.room_id, @reservation.date, @reservation.start_time, @reservation.end_time,@reservation.id)
    if !(@reservations.empty?)
       redirect_to rooms_path, notice: 'Failed due to room overlap' and return
    end
            respond_to do |format|
            if @reservation.update(reservation_params)
              format.html { redirect_to @reservation, notice: "Success"}
              format.json { render :show, status: :created, location: @reservation }
            else
              format.html { render :new }
              format.json { render json: @reservation.errors, status: :unprocessable_entity }
              end
            end
         end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def memhistory
    @reservations = Reservation.new
    @reservations = Reservation.where("member_id = ?",params[:id]).order('date DESC')
  end
  def schedule
    @reservations = Reservation.new
    @reservations = Reservation.where("room_id = ?",params[:id]).order('start_time DESC')
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:member_id, :room_id, :member_id, :date, :start_time)
    end
end
