require 'httparty'
require 'json'

def get_quote
  puts "Getting the Quote of the day."
  resp = HTTParty.get(TSS_URL)
  body = JSON.parse(resp.body)
  author = body["contents"]["quotes"][0]["author"]
  puts "Got a Nice quote from #{author}"
  quote = body["contents"]["quotes"][0]["quote"]
  puts "He says - #{quote}"
  post_message(author, quote)
end

def post_message author, quote
  puts "Transferring the vibe through Slack!"
  img = ENV["IMAGE_URL"] || "https://libcom.org/files/images/library/fist.jpg"
  HTTParty.post SLACK_WEBHOOK, body: {"text" => quote, "username" => author, "icon_url" => img}.to_json, headers: {'content-type' => 'application/json'}
  puts "Posted a message. Hope they'd like it."
end

SLACK_WEBHOOK = ENV["SLACK_WEBHOOK"]

#Available Categories = ["inspire", "management", "sports", "life", "funny", "love", "art"]
category = ENV["CATEGORY"] || "inspire"
TSS_URL = "http://api.theysaidso.com/qod.json?category=#{category}"

puts "Off to Work.."
get_quote
puts "All done for the day."
