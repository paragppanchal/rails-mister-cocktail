class DosesController < ApplicationController

  def index
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = Dose.where(cocktail_id: params[:cocktail_id])
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(review_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_doses_path
    else
      @cocktail = Cocktail.find(params[:cocktail_id])
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy!
   end

  private

  def review_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
