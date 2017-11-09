class ConversationsController < ApplicationController
  before_action :authenticate_user!

def index
  @user = current_user
  @conversations = Conversation.all
end

 def create
  @conversations = Conversation.where(buyer_id: current_user.id)
  @conversation = @conversations.where(listing_id: params[:listing_id])
  # @conversation = Conversation.between(current_user.id, params[:listing_id]).first
  # byebug
  if @conversation.length == 1
     redirect_to conversation_messages_path(@conversation[0])
  else
    @conversation = Conversation.new(conversation_params)
    @conversation.buyer = current_user
    if @conversation.save
      # Success
      redirect_to conversation_messages_path(@conversation)
    else
      # Error saving
      flash[:alert] = "Failed to save conversation"
      redirect_back(fallback_location: root_path)
      
    end
  end
 end

 private
  def conversation_params
   params.permit(:listing_id)
  end
 end