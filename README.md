IronConsumer Starter Pack
========================

This is some starter worker code that users the iron_consumer gem: https://github.com/iron-io/iron_consumer

You can run it as is to test it, then modify it as you see fit.

## Getting Started

Let's run the quick example first:

1. Clone this repo `git clone https://github.com/iron-io/iron_consumer_starter.git`
1. Make a copy of `example.config.yml` called `config.yml` and a copy of `example.iron.json` called `iron.json` and
replace all the settings in it especially your token and project id (get these from HUD). TODO: make it so we only need
config.yml.
1. Run `bundle update`
1. Now let's add a dummy message to a queue on IronMQ (run it a few times if you want): `ruby addmsg.rb`
1. And process it: `ruby local.rb`

## Now upload and let it run on the IronWorker platform

1. Run `iron_worker upload consumer`
1. Add another message (or many) for the worker: `ruby addmsg.rb`
1. Queue up a worker to process the queue: `iron_worker queue consumer`
1. Boom! Check out the results in HUD.

## Modify the worker to do what you want

Ok, now that we got the example running, we can modify the worker to do whatever we want, whether that's
processing some data and stuffing it in a database, processing an image, sending out notifications via email, SMS,
or to mobile phones.

1. Modify `usersetup.rb`, put in stuff here that only needs to happen once like make database connections or
1. Update Gemfile with gems you need (and bundle update of course)
1. Modify `usercode.rb` with what you want your worker to do.
1. Test it with `ruby local.rb`
1. Upload it to IronWorker again.
1. Queue up a job again to test it.

## Now setup alerts or schedule the worker so it's running when it's needed

Alerts will start this runner when there's things in the queue to process and will autoscale if your queue grows.

1. Run `ruby setalerts.rb`
1 Run `ruby addmsg.rb` to put a message on the queue and your worker will start automatically! BOOM!

or Schedule it to have it running all the time:

1. Schedule it: `iron_worker schedule --run-every 60 consumer`

