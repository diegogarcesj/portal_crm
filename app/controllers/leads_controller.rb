class LeadsController < ApplicationController
  before_action :set_lead, only: %i[show edit update destroy]

  def index
    @leads = Lead.all.reverse
    @num_leads = Lead.where(status: "prospecto").count
    @num_interested = Lead.where(status: "interesado").count
    @num_customers = Lead.where(status: "cliente").count
  end

  def show
    @conversations = @lead.conversations.reverse
    @conversation = Conversation.new
  end

  def new
    @lead = Lead.new
  end

  def create
    lead_params_int = lead_params
    lead_params_int['status'] = lead_params_int['status'].to_i
    @lead = Lead.new(lead_params_int)
    @lead.user = current_user

    if @lead.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    lead_params_int = lead_params
    lead_params_int['status'] = lead_params_int['status'].to_i
    @lead.update(lead_params_int)
    # @lead.user = current_user

    if @lead.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @lead.destroy

    redirect_to root_path
  end

  private

  def set_lead
    @lead = Lead.find(params[:id])
  end

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :email, :phone, :status)
  end

end
