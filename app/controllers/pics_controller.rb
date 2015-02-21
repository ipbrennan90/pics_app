class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update]

  def index
    @pics=Pic.all
  end

  def new
    @pic=Pic.new
  end

  def create
    @pic=Pic.new(pic_params)
    if @pic.save
      flash[:notice] = "Pic successfully added"
      redirect_to pic_path(@pic)
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
    if @pic.update(pic_params)
      flash[:notice] = "Pic was successfully updated"
      redirect_to pic_path(@pic)
    else
      render :edit
    end

  end

  def destroy
    pic= Pic.find(params[:id])
    if pic.destroy
      flash[:notice] = "Pic was deleted"
      redirect_to pics_path
    end
  end

  private

  def set_pic
    @pic=Pic.find(params[:id])
  end

  def pic_params
    params.require(:pic).permit(:date, :title, :description)
  end
 end
