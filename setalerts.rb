require 'iron_mq'
require 'yaml'

config = YAML.load_file('config.yml')

# make two queues
mq = IronMQ::Client.new(config['iron'])
q1 = mq.queue(config['workqueue'])
q2 = mq.queue(config['workqueue_alertqueue'])

worker_name = "consumer"
q2.add_subscriber(:url=>"ironworker:///#{worker_name}")

# Add alerts with q2 as destination
r = q1.add_alert({:type => "fixed",
                  :trigger => 1,
                  :queue => q2.name,
                  :direction => "asc"
                 })

#r = q1.add_alert({:type => "progressive",
#                  :trigger => 10,
#                  :queue => q2.name,
#                  :direction => "asc",
#                  :snooze => 0
#                 })
