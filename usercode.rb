puts "Got message: #{IronConsumer.message.body}"
# transform body or generate something
username = "Travis" # Would normally get this from database for user
body = JSON.parse(IronConsumer.message.body)["mystring"].gsub("#NAME#", username)
puts "transformed to: #{body}"

# store in database, send email, post to social media, send notifications to mobile phone, etc. ex:
# IronConsumer.connections["mymongo"].collection('msgs').insert({'body' => body})

