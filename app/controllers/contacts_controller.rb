class ContactsController < ApplicationController
  before_action  only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @user = current_user
    @contacts = @user.contacts.order("created_at DESC")
  end
  # Index page '/'
  def home
    # grabbing API
    base_uri = 'http://api.football-data.org'
    key = '844aa49bbcfe45e284ab09b02bfce32b'
    @soccer_season = HTTParty.get("#{base_uri}/v1/soccerseasons",:headers => {"X-Auth-Token" => key })
    @teams = HTTParty.get("#{base_uri}/v1/soccerseasons/398/teams",:headers => {"X-Auth-Token" => key })
    @premier_league = HTTParty.get("#{base_uri}/v1/soccerseasons/398/leagueTable",:headers => {"X-Auth-Token" => key })
  end

  # def all
  #   @contacts = Contact.where(user_id: current_user.id)
  #   render :show
  # end
  def show
    @contacts = Contact.where(user_id: current_user.id)
  end
  # GET /contacts/new
  def new
  end

  # GET /contacts/1/edit
  def edit
    @contact = Contact.find(params[:id])
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    @contact.save
      if @contact.save
        flash[:notice] = "Contact successfully created"
        redirect_to '/contacts/show'
      else
        redirect_to '/contacts/new'
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
      contact = Contact.find(params[:id])
      if contact.update(contact_params)
        flash[:notice] = "Contact successfully updated"
        redirect_to '/contacts/show'
      else
        redirect_to '/contacts/new'
      end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    contact = Contact.find(params[:id])
    if contact.delete
      flash[:notice] = "Contact successfully deleted"
      redirect_to '/contacts/show'
    else
      redirect_to '/contacts/new'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :phone_mobile, :user_id)
    end
end
