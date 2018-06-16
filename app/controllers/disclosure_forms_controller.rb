class DisclosureFormsController < ApplicationController
  before_action :set_disclosure_form, only: [:show, :update, :destroy]

  # GET /disclosure_forms
  def index
    @disclosure_forms = DisclosureForm.all

    render json: @disclosure_forms
  end

  # GET /disclosure_forms/1
  def show
    render json: @disclosure_form
  end

  # POST /disclosure_forms
  def create
    @disclosure_form = DisclosureForm.find_by(name: params[:name]) || DisclosureForm.new(disclosure_form_params)
    if @disclosure_form.save
      render json: @disclosure_form, status: :created, location: @disclosure_form
    else
      render json: @disclosure_form.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /disclosure_forms/1
  def update
    if @disclosure_form.update(disclosure_form_params)
      render json: @disclosure_form
    else
      render json: @disclosure_form.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disclosure_form
      @disclosure_form = DisclosureForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def disclosure_form_params
      params.permit(:name, :dob, :street, :apt_number, :city_state_zip, :email, :home_phone)
    end
end
