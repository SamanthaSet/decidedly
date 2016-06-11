class ChoicesController < ApplicationController
  def index
    @choices = Choice.all
  end

  def show
    @choice = Choice.find(params[:id])
  end

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new
    @choice.decision_id = params[:decision_id]
    @choice.choice_name = params[:choice_name]

    if @choice.save
      redirect_to :back
    else
      render "new"
    end
  end

  def edit
    @choice = Choice.find(params[:id])
  end

  def update
    @choice = Choice.find(params[:id])

    @choice.decision_id = params[:decision_id]
    @choice.choice_name = params[:choice_name]

    if @choice.save
      redirect_to "/decisions/#{@choice.decision_id}", :notice => "Choice updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @choice = Choice.find(params[:id])

    @choice.destroy

    redirect_to "/decisions/#{@choice.decision_id}"
  end
end
