# Simple script to put a message on the queue for testing.

require 'iron_mq'

mq = IronMQ::Client.new()

# qname defined by user too
qname = "testq"
queue = mq.queue(qname)
msg = {
    "mystring" => "Hello #NAME#!"
}
queue.post(msg.to_json)

puts "Added message to queue: #{queue.name} in project: #{mq.project_id}"
