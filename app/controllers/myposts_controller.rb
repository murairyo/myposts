class MypostsController < ApplicationController
  
  before_action :set_mypost, only: [:edit, :update,:destroy,:show]
  
  # 初期一覧
  def index
    @myposts = Mypost.all
  end
  
  # 新規投稿画面
  def new 
    if params[:back]
     @mypost = Mypost.new(mypost_params)
    else
      @mypost = Mypost.new
    end
  end
  
  # トップページ
  def top
  end
  
  # 投稿処理（データー保存）
  def create
    @mypost = Mypost.new(mypost_params)
    if @mypost.save
      redirect_to myposts_path, notice: "ブログを作成しました！"
    else
       render 'new'
    end
  end
  
  # 編集する内容を入力
  def edit
  end
  
  # 詳細画面
  def show
  end
  
  # 編集された内容で、データを更新
  def update
    if @mypost.update(mypost_params)
      redirect_to myposts_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end
  
  # 削除機能
  def destroy
    @mypost.destroy
    redirect_to myposts_path, notice:"ブログを削除しました！"
  end
  
  # 確認画面
  def confirm
    @mypost = Mypost.new(mypost_params)
    render :new if @mypost.invalid?
  end
  
  private
  def mypost_params
    params.require(:mypost).permit(:content)
  end
  
  def set_mypost
    @mypost = Mypost.find(params[:id])
  end
     
end
