module My_printer
  def My_printer.prettifier (hash)

    cityName = 'In ' + hash['location']['name']
    temperature = ' temperature is: ' + hash['current']['temp_c'].to_s + ' and wind is '

    wind = hash['current']['wind_kph']
    case wind
      when 1..10
        wind = 'easy'

      when 10..30
        wind = 'considerable'

      else
        wind = 'severe'
    end

    return cityName + temperature + wind
  end
end