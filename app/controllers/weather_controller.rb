class WeatherController < ApplicationController
  def index
    query = {
      date: params[:date],
      city: params[:city].present? ? params[:city].split(',') : nil,
    }
    sorting = params[:sort] === 'date' ? :asc : :desc
    results = Weather.where(query.compact).order(date: sorting)
    # render json: results, serializer: WeatherSerializer
    render json: results
  end

  def show
    weather = Weather.find_by(id: params[:id])
    if weather.present?
      render json: weather
    else
      render status: :not_found
    end
  end

  def create
    weather = Weather.new(
      date: params[:date],
      lat: params[:lat],
      lon: params[:lon],
      city: params[:city],
      state: params[:state],
      temperatures: params[:temperatures]
    )
    if weather.save!
      render json: weather, status: :created
    else
      render status: :unprocessable_entity
    end
  end
end
