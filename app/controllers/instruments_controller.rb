class InstrumentsController < ApplicationController
  #show,edit,update,destroy
  before_action :find_instrument, only: [:show, :edit, :update, :destroy]
  #
  def index
    @instruments = Instrument.all
  end

  def show
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.create(instrument_params)
    redirect_to @instrument
  end

  def edit
    # render 'new'
  end

  def update
    @instrument.update(instrument_params)
    redirect_to @instrument
  end

  def destroy
    @instrument.destroy
    redirect_to instruments_path
  end

  private

  def find_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:name, :instrument_type, :rating, :pleasant)
  end
end
