class TwilioTextMessenger
  attr_reader :message, :to_number
 
  def initialize(message, to_number)
    @message = message
    @to_number = to_number
  end
 
  def send
    client = Twilio::REST::Client.new
    client.messages.create({
      from: Rails.application.credentials.twilio[:phone_number],
      to: to_number,
      body: message
    })
  end
end

# TwilioTextMessenger.new("hi", "4043108234").send