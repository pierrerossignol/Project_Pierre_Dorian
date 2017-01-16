class ConversationsController < ApplicationController
 before_action :authenticate_user!

def index
 if current_user.try(:role)
  @users = User.all
 else
  st_ids = current_user.services.map {|s| s.service_type_id}.uniq
  skills = Skill.where(service_type_id: st_ids).where.not(user_id: current_user.id)
 
  @users = skills.map {|s| s.user}
 end
 @conversations = Conversation.all
end

def create
 if Conversation.between(params[:sender_id],params[:recipient_id])
   .present?
    @conversation = Conversation.between(params[:sender_id],
     params[:recipient_id]).first
 else
  @conversation = Conversation.create!(conversation_params)
 end

 redirect_to conversation_messages_path(@conversation)

end

private
 def conversation_params
  params.permit(:sender_id, :recipient_id)
 end

end