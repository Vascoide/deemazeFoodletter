class ApplicationMailer < ActionMailer::Base
  default from: "restaurantNewsletter@deemaze.com"
  layout "mailer"

  @restaurants = Restaurant.includes(:dishes)
end
