# Runs locally
require 'iron_consumer'
require 'yaml'

config = YAML.load_file('config.yml')
IronConsumer.run(config)
