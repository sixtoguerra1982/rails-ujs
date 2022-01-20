class InstrumentsController < ApplicationController
    before_action :set_instrument, only: [:edit, :update, :show, :destroy]

    def create
        @instrument = Instrument.new(instrument_params)
        unless @instrument.save
            render json: @instrument.errors, status: :unprocessable_entity
        end
    end

    def edit
        
    end

    def update
        unless @instrument.update(instrument_params)
            render json: @instrument.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @instrument.destroy
    end

    def show

    end

    private

    def set_instrument
        @instrument = Instrument.find(params[:id])
    end

    def instrument_params
        params.require(:instrument).permit(:name)
    end

end
