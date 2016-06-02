class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    # @contacts = Contact.all
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
  def show
    # @contact = user.contacts
  end

  # GET /contacts/new
  def new
    # if current_user.contacts
    #   redirect_to root_path
    # end
    # @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    respond_to do |format|
      if @contact.save
        format.html { redirect_to '/', notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :phone_mobile, :phone_work, :street, :city, :zip_postal_code, :state_province, :country_region, :nick_name, :personal_web_pages, :user_id)
    end
end
