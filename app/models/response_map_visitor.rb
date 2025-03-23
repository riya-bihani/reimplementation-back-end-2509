class ResponseMapVisitor
  def visit_feedback_response_map(feedback_response_map, defn, participant, assignment)
    raise NotImplementedError, 'This method should be overridden in a subclass'
  end
end
