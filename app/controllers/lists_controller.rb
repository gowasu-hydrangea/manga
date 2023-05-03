class ListsController < ApplicationController
  
  def new
    @list = List.new
  end
  
  def create
    # 基礎知識学習フェーズ/アプリケーションを完成させよう/2章
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end
  
  private
  
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
