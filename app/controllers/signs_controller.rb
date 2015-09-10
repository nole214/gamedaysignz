class SignsController < ApplicationController
  before_action :set_sign, only: [:show, :edit, :update, :destroy]

  
  def index
    @signs = Sign.all
  end

  
  def show
  end

  
  def new
    @sign = Sign.new
  end

  
  def edit
  end

  
  def create
    @sign = Sign.new(sign_params)
      if @sign.save
        redirect_to @sign, notice: 'Sign was successfully created.' 
      else
        render :new 
        
      end
  end

  
  def update
      if @sign.update(sign_params)
        redirect_to @sign, notice: 'Sign was successfully updated.' 
      else
        render :edit 
  end

 
  def destroy
    @sign.destroy
      redirect_to signs_url, notice: 'Sign was successfully destroyed.' 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign
      @sign = Sign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_params
      params.require(:sign).permit(:description)
    end
end
