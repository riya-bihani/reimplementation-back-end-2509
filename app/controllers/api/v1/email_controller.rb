# app/controllers/email_controller.rb
class EmailController < ApplicationController
  def send_feedback_email
    # Create the visitor
    visitor = EmailVisitor.new

    # Collect all the objects needed for the visitor pattern
    response = Response.find(params[:reviewed_object_id])
    response.accept(visitor)

    response_map = ResponseMap.find(response.map_id)
    response_map.accept(visitor)

    participant = AssignmentParticipant.find(response_map.reviewer_id)
    participant.accept(visitor)

    user = User.find(participant.user_id)
    user.accept(visitor)

    # Prepare the email data
    defn = {}
    visitor.send_email(defn, Assignment.find(params[:assignment_id]))

    # Respond to the request (for example, redirect or render a confirmation)
    redirect_to some_path, notice: "Feedback email sent successfully."
  end
end
