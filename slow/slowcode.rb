puts "Got message: #{IronConsumer.message.body}"
sleep_for = 10
puts "Sleeping for #{sleep_for} seconds..."
sleep sleep_for
puts "Woke up"
