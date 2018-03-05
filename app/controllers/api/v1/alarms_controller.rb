class Api::V1::AlarmsController < ApplicationController
  before_action :format_params, except: [:index]
  before_action :find_alarm, only: [:update, :destroy]

  def index
    alarms = Alarm.all
    render json: alarms
  end

  def create
    alarm = Alarm.new(alarm_params)
    if alarm.save
      render json: alarm
    else
      render json: { error: 'Did Not Create' }
    end
  end

  def update
    if @alarm && @alarm.update(alarm_params)
      render json: @alarm
    else
      render json: { error: 'Did Not Update'}
    end
  end

  def destroy
    if @alarm && @alarm.destroy
      render json: @alarm
    else
      render json: { error: 'Did Not Delete'}
    end
  end

  private
    
    def alarm_params
      params.permit(:id, :active, :time, :itemized, :localized)
    end

    def format_params
      params[:active] ? params[:active] = to_bool(params[:active]) : nil
      params[:itemized] ? params[:itemized] = to_bool(params[:itemized]) : nil
      params[:localized] ? params[:localized] = to_bool(params[:localized]) : nil
    end

    def to_bool(int)
      int == 1
    end

    def find_alarm
      @alarm = Alarm.find_by(id: params[:id])
    end

end
