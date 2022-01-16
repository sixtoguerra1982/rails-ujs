class HomeController < ApplicationController
  def index
    @instrument = Instrument.new
  end
end
