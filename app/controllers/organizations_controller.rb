class OrganizationsController < ApplicationController
  TOKEN = "secret"

  before_action :authenticate, except: [ :index ]
  def index
    category = params[:category]
    @organization = Organization.search(category)
    json_response(@organization)
  end

  def show
    @organization = Organization.find(params[:id])
    json_response(@organization)
  end

  def create
   @organization = Organization.create!(organization_params)
   json_response(@organization, :created)
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update!(organization_params)
      render status: 200, json: {
       message: "Your organization has been updated successfully."
       }
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def organization_params
    params.permit(:category)
  end

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
    end
  end

end
