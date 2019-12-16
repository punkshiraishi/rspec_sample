class UrusController < ApplicationController
  def create
    @uru = Uru.new(uru_params)
    if @uru.save
      redirect_to result_url
    else
      render 'static_pages/home'
    end
  end

  private

  def uru_params
    params.require(:uru).permit(:year)
  end


end
