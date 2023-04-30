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
  end

  def show
  end

  def edit
  end
  
  
end
