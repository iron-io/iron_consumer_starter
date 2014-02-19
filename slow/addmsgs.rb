# Simple script to put a message on the queue for testing.

require 'iron_mq'
require 'yaml'

config = YAML.load_file('config.yml')
mq = IronMQ::Client.new(config['iron'])

# qname defined by user too
qname = config['workqueue']
queue = mq.queue(qname)

100.times do |i|
  msg = {
      "mystring" => "Hello #NAME#!"
  }
  queue.post(msg.to_json)
  puts "Adding #{i}"
  sleep 1
end

puts "Added messages to queue: #{queue.name} in project: #{mq.project_id}"
