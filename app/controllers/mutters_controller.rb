class MuttersController < ApplicationController
  before_action :set_mutter, only: [:show, :edit, :update, :destroy]

  def index
    @mutters = Mutter.all
  end

  def new
    @mutter = Mutter.new
  end

  def create
    # Mutter.create(blog_params)
    # redirect_to new_mutter_path
    # CHANGED TO BELOW FROM CHAPTER 23

    @mutter = Mutter.new(mutter_params)
    if params[:back]
      render :new
    else
     if @mutter.save
       # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
       redirect_to mutters_path, notice: "Mutterを作成しました！"
     else
       # 入力フォームを再描画します。
       render :new
     end
   end
  end

  def show
    # @mutter = Mutter.find(params[:id])
  end

  def edit
    # @mutter = Mutter.find(params[:id])
  end

  def update
    # @mutter = Mutter.find(params[:id])
    if @mutter.update(mutter_params)
      redirect_to mutter_path, notice: "Mutterを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @mutter.destroy
    redirect_to mutters_path, notice: "Mutterを削除しました！"
  end

  def confirm
    @mutter = Mutter.new(mutter_params)
    render :new if @mutter.invalid?
  end

  private

  def mutter_params
    params.require(:mutter).permit(:content)
  end

  def set_mutter
    @mutter = Mutter.find(params[:id])
  end

end
