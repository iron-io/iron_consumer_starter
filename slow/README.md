This example uses progressive alerts to auto-scale workers.

1. Run `iron_worker upload slowworker`
1. Run `ruby setalerts.rb`
1. Run `ruby addmsgs.rb`
1. Watch HUD task list to see tasks growing and processing.

