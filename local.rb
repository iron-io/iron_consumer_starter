# Runs locally
require 'iron_consumer'
p $ARGV.inspect
p File.expand_path('.')
IronConsumer.run('testq')
