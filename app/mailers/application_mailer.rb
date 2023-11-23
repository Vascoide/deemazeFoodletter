class ApplicationMailer < ActionMailer::Base
  default from: "restaurantNewsletter@deemaze.com"
  layout "mailer"

  @restaurants = Restaurant.includes(:dishes)

  def send_to_subscribers
    @emails = Email.all

    @emails.each do |mail|
      mail(to: @mail.email, subject: 'TESTING')
    end
  end
end
