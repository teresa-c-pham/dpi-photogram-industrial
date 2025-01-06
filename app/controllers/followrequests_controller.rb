class FollowrequestsController < ApplicationController
  before_action :set_followrequest, only: %i[ show edit update destroy ]

  # GET /followrequests or /followrequests.json
  def index
    @followrequests = Followrequest.all
  end

  # GET /followrequests/1 or /followrequests/1.json
  def show
  end

  # GET /followrequests/new
  def new
    @followrequest = Followrequest.new
  end

  # GET /followrequests/1/edit
  def edit
  end

  # POST /followrequests or /followrequests.json
  def create
    @followrequest = Followrequest.new(followrequest_params)

    respond_to do |format|
      if @followrequest.save
        format.html { redirect_to followrequest_url(@followrequest), notice: "Followrequest was successfully created." }
        format.json { render :show, status: :created, location: @followrequest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @followrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /followrequests/1 or /followrequests/1.json
  def update
    respond_to do |format|
      if @followrequest.update(followrequest_params)
        format.html { redirect_to followrequest_url(@followrequest), notice: "Followrequest was successfully updated." }
        format.json { render :show, status: :ok, location: @followrequest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @followrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followrequests/1 or /followrequests/1.json
  def destroy
    @followrequest.destroy!

    respond_to do |format|
      format.html { redirect_to followrequests_url, notice: "Followrequest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_followrequest
      @followrequest = Followrequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def followrequest_params
      params.require(:followrequest).permit(:recipient_id, :sender_id, :status)
    end
end
