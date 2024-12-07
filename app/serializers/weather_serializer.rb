class WeatherSerializer < ActiveModel::Serializer
  attributes :lat,
             :lon

  def lat
    object.try(:lat).to_f
  end

  def lon
    object.try(:lon).to_f
  end
end
