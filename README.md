IronConsumer Starter Pack
========================

This is some start worker code, you can run it as is to test it, then modify it as you see fit.

## Getting Started

Let's run the quick example first:

1. Clone this repo `git clone https://github.com/iron-io/iron_consumer_starter.git`
1. Make a copy of `example.iron.json` called `iron.json` and update it with your token and project id (get these from HUD)
1. Run `bundle update`
1. Now let's add a dummy message to a queue on IronMQ: `ruby addmsg.rb`
1. And process it: `ruby local.rb`

## Modify the worker to do what you want

Ok, now that we got the example running, we can modify the worker to do whatever we want, whether that's
processing some data and stuffing it in a database, processing an image, sending out notifications via email, SMS,
or to mobile phones.

1. Modify `usersetup.rb`, put in stuff here that only needs to happen once like make database connections or
1. Update Gemfile with gems you need (and bundle update of course)
1. Modify `usercode.rb` with what you want your worker to do.
1. Test it with `ruby local.rb`

## Now upload and let IronWorker do the rest of the work

1. Run `iron_worker upload consumer`
1. Schedule it: `iron_worker schedule --run-every 60 consumer`

