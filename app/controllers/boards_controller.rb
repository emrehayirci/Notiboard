class BoardsController < ApplicationController
  def show
      @board = Board.find(params[:id])
  end

  def index
    @boards = Board.all
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def board_params
    params.require(:board).permit(:title, :description, :public, :logo)
  end


  def new
    @board = Board.new
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    if Board.update(params[:id],board_params)
      redirect_to boards_path notice: "Başarıyla Güncellendi!"
    else
      render :new
    end
  end
end
