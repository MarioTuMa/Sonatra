require 'sendgrid-ruby'
include SendGrid
require 'dotenv'
Dotenv.load
task :email do
  puts "emailing"
  data = JSON.parse('{
  "personalizations": [
    {
      "to": [
        {
          "email": "mtutuncumacias1@gmail.com"
        }
      ],
      "subject": "Plain Message #notspam"
    }
  ],
  "from": {
    "email": "mtutuncumacias1@example.com"
  },
  "content": [
    {
      "type": "text/plain",
      "value": "spam"
    }
  ]
}')
sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._("send").post(request_body: data)
puts response.status_code
puts response.body
puts response.headers
  puts "done."
end
