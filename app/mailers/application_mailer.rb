class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@nomster-jon.herokuapp.com'
  layout 'mailer'
end
