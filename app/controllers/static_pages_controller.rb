class StaticPagesController < ApplicationController
  def home
    @uru = Uru.new
  end

  def result
  end
end
