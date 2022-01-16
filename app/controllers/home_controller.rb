class HomeController < ApplicationController
  def index
    @instrument = Instrument.new
    @instruments = Instrument.all
  end
end
