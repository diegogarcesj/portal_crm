class ConversationsController < ApplicationController
  before_action :set_lead, only: [:create]

  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.lead = @lead
    if @conversation.save
      redirect_to lead_path(@lead)
    else
      render 'leads/show'
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:content)
  end

  def set_lead
    @lead = Lead.find(params[:lead_id])
  end

end
