require 'httparty'

response = HTTParty.get('https://makemeapassword.ligos.net/api/v1/passphrase/json?pc=10&wc=1')
response_json = JSON.parse(response.body)

password_list = response_json["pws"]

password_list.each do |password|
  puts password
end
