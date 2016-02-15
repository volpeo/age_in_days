class AgeInDaysController < ApplicationController
  def ask
  end

  def answer
    @scale = params[:scale]
    @days = age_in_days(params[:day], params[:month], params[:year])
    @days = (@days / 365).round if @scale == "years"
  end

  private

  def age_in_days(day, month, year)
    return (DateTime.now - Date.new(year.to_i, month.to_i, day.to_i)).to_i
  end
end
