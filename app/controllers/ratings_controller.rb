class RatingsController < ApplicationController
  def create

    @rating = Rating.new(rating_params)

    respond_to do |format|
      if @rating.save
        format.html { redirect_to :back, notice: 'Idea was successfully created.' }
        format.json { render :show, status: :created, location: @rating }
      else
        format.html { render :new }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  def rating_params
    params.require(:rating).permit(:value, :idea_id)
  end
end
