The First Obstacle
==================

So far our bird is moving and flapping but it's not really fun yet. Lets add obstacles
for you to avoid!

For that we have created a simple method for you: ```addObstacle``` To use it, in your ```initialize```
method, simply add:

    [self addObstacle];

Then run the game. You should see a random obstacle appear!

More Obstacles
==============

Now that we have one obstacle, lets add more! In your ```initialize``` method,
right after your previous ```[self addObstacle];```,
initialize the ```timeSinceObstacle``` variable like so:

    timeSinceObstacle = 0;

What we want to do is add a new obstacle at some regular interval.
This time in your ```update``` method, try adding:

    // Increment the time since last obstacle was added
    // delta is ~1/60th of a second
    timeSinceObstacle += delta;

    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2)
    {
        // Add a new obstacle
        [self addObstacle];

        // Then reset the timer.
        timeSinceObstacle = 0;
    }

Now run the game again. See if you can make it easier or harder by making
the ```2``` higher or lower!
