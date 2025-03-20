class NotificationVisitor
  def visit_feedback_response_map(feedback_response_map, defn, assignment)
    raise NotImplementedError, 'Subclasses must implement this method'
  end
end
