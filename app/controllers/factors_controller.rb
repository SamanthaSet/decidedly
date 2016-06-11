class FactorsController < ApplicationController
  def index
    @factors = Factor.all
  end

  def show
    @factor = Factor.find(params[:id])
  end

  def new
    @factor = Factor.new
  end

  def create
    @factor = Factor.new
    @factor.decision_id = params[:decision_id]
    @factor.factor_name = params[:factor_name]
    @factor.ranking = params[:ranking]

    if @factor.save
      redirect_to "/decisions/#{@factor.decision_id}"
    else
      render "new"
    end
  end

  def edit
    @factor = Factor.find(params[:id])
  end

  def update
    @factor = Factor.find(params[:id])

    @factor.decision_id = params[:decision_id]
    @factor.factor_name = params[:factor_name]
    @factor.ranking = params[:ranking]

    if @factor.save
      redirect_to "/decisions/#{@factor.decision_id}"
    else
      render 'edit'
    end
  end

  def destroy
    @factor = Factor.find(params[:id])

    @factor.destroy

    redirect_to "/decisions/#{@factor.decision_id}"
  end
end
