class FeedbackEmailService
  def self.send_feedback_email(defn)
    Mailer.sync_message(defn).deliver
  rescue StandardError => e
    Rails.logger.error "Error sending feedback email: #{e.message}"
  end
end
