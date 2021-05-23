# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name: 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  password: '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', # This is the secret sendgrid API key which was issued during API key creation 'Rails.application.secrets.sendgrid_api_key'
  domain: 'student.rmit.edu.au',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}