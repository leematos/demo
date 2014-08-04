class ChampionsController < ApplicationController
   before_action :set_champion, only: [:show, :edit, :update, :destroy]

	def index
		@champions = Champion.all
	end

  def new
    @champion = Champion.new
  end

  def show
  end

  def create
    @champion = Champion.new(champion_params)
    if @champion.save
      redirect_to @champion, notice: 'Pin was successfully created.'
    else
      render action: 'new'
    end
  end

private

def champion_params
      params.require(:champion).permit(:description, :image)
    end


def set_champion
      @champion = Champion.find(params[:id])
    end

end
