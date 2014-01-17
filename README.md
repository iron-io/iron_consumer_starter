iron_consumer_starter
=====================

This is some start worker code, you can run it as is to test it, then modify it as you see fit.

## Getting Started

Let's run the quick example first:

1. Modify iron.json with your token and project id (get these from HUD)
1. Run `bundle update`
1. Now let's add a dummy message to a queue on IronMQ: `ruby addmsg.rb`
1. And process it: `ruby local.rb`

## Modify the worker to do what you want

Ok, now that we got the example running, we can modify the worker to do whatever we want, whether that's
processing some data and stuffing it in a database, processing an image, sending out notifications via email, SMS,
or to mobile phones.

1. Modify `usersetup.rb`, put in stuff here that only needs to happen once like make database connections or
1. Update Gemfile with gems you need (and bundle update of course)
1.