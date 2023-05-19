class ListsController < ApplicationController
  
  def new
    @list = List.new
  end
  
  def create
    # 基礎知識学習フェーズ/アプリケーションを完成させよう/2章
    list = List.new(list_params)
    list.save
    # 基礎知識学習フェーズ/アプリケーションを完成させよう/4章
    redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    # 基礎知識学習フェーズ/アプリケーションを完成させよう/5章
    @list = List.find(params[:id])
  end
  
  def update
  end
  
  private
  
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
