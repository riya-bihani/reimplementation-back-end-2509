# app/services/email_visitor.rb
class EmailVisitor
  def visit_response(response)
    @response_id_for_original_feedback = response.reviewed_object_id
    @response_for_original_feedback = Response.find @response_id_for_original_feedback
  end

  def visit_response_map(response_map)
    @response_map_for_original_feedback = ResponseMap.find response_map.id
    @original_reviewer_participant_id = @response_map_for_original_feedback.reviewer_id
  end

  def visit_participant(participant)
    @participant = AssignmentParticipant.find(@original_reviewer_participant_id)
  end

  def visit_user(user)
    @user = User.find(@participant.user_id)
  end

  def send_email(defn, assignment)
    defn[:to] = @user.email
    defn[:body][:first_name] = @user.fullname
    defn[:body][:type] = 'Author Feedback'
    defn[:body][:obj_name] = assignment.name
    Mailer.sync_message(defn).deliver
  end
end
