$LOAD_PATH << '.'
require 'displayer'
require "open-uri"
require 'json'

class Main
  include My_printer

  MY_KEY = '' # add your key here
  MY_URI = 'http://api.apixu.com/v1/current.json?key='<<MY_KEY<<'&q=Aarhus'

  def self.getBody
    response = URI.parse(MY_URI).read

    return My_printer.prettifier JSON.parse(response)
  end
  puts self.getBody
end