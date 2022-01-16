class InstrumentsController < ApplicationController
    def create
        @instrument = Instrument.new(instrument_params)
        unless @instrument.save
            render json: @instrument.errors, status: :unprocessable_entity
        end
    end

    private

    def instrument_params
        params.require(:instrument).permit(:name)
    end

end
