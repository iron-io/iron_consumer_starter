# Simple script to put a message on the queue for testing.

require 'iron_mq'
require 'yaml'

config = YAML.load_file('config.yml')
mq = IronMQ::Client.new(config['iron'])

# qname defined by user too
qname = config['workqueue']
queue = mq.queue(qname)
msg = {
    "mystring" => "Hello #NAME#!"
}
queue.post(msg.to_json)

puts "Added message to queue: #{queue.name} in project: #{mq.project_id}"
