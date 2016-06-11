class DecisionsController < ApplicationController
  def index
    @decisions = Decision.all
  end

  def show
    @decision = Decision.find(params[:id])
    @rating = Rating.new
  end

  def result
    @decisions = Decision.all
    @decision = Decision.find(params[:id])
  end


  def new
    @decision = Decision.new
  end

  def create
    @decision = Decision.new
    @decision.user_id = params[:user_id]
    @decision.description = params[:description]
    @decision.note = params[:note]

    if @decision.save
      redirect_to "/decisions/#{@decision.id}"
    else
      render 'new'
    end
  end

  def edit
    @decision = Decision.find(params[:id])
  end

  def update
    @decision = Decision.find(params[:id])

    @decision.user_id = params[:user_id]
    @decision.description = params[:description]
    @decision.note = params[:note]

    if @decision.save
      redirect_to "/decisions", :notice => "Decision updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @decision = Decision.find(params[:id])

    @decision.destroy

    redirect_to "/decisions", :notice => "Decision deleted."
  end
end
