class WelcomesController < ApplicationController
  before_action :set_welcome, only: [:show, :edit, :update, :destroy]

  # GET /welcomes
  # GET /welcomes.json
  def index
     if params[:ref].present?
      @welcome= Welcome.find_by_id(params[:ref])
      @welcome.destroy
      end
      @welcome = Welcome.new
     end
  # GET /welcomes/1
  # GET /welcomes/1.json
  def show
  end


def contact_us
  @contact_us = Welcome.new(welcome_params)
  respond_to do |format|
      if @contact_us.save
        format.html { redirect_to   edit_welcome_path(id: @welcome.id) , notice: 'Welcome was successfully created.' }
        format.js {}
       else
      format.html { render :new }
       format.js { }
      end
    end  
end
  # GET /welcomes/new
  def new
    @welcome = Welcome.new
  end

  # GET /welcomes/1/edit
  def edit
  end
  def client_payments
 
  end
  # POST /welcomes
  # POST /welcomes.json
  def create
    @welcome = Welcome.new(welcome_params)   
    respond_to do |format|
    ContactUs.confirmation_contact_us(@welcome).deliver_now
    ContactUs.contact_us_mail_for_support(@welcome).deliver_now
    format.html { redirect_to   root_path , notice: 'Welcome was successfully created.' }
    format.js {}    
    end
  end

  

  def destroy
    @welcome.destroy
    respond_to do |format|
      format.html { redirect_to welcomes_url, notice: 'Welcome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def article
     @welcome = Welcome.new(welcome_params)   
     respond_to do |format|
       if @welcome.save
          ContactUs.article_mail_to_admin(@welcome).deliver_now
          ContactUs.article_mail(@welcome).deliver_now
         # @welcome.destroy
       format.html #{ redirect_to   edit_welcome_path(id: @welcome.id) , notice: 'Welcome was successfully created.' }
        format.js {}
       else
      format.html { render :new }
       format.js { }
      end
    end
    
  end

  def diet_plan
    # binding.pry
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome
      @welcome = Welcome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcome_params 
      params.require(:welcome).permit(:first_name,:last_name, :phone, :address, :message, :email, :street_address1,:street_address2,:city,:state,:zip,:amount,:country)
    end
end
