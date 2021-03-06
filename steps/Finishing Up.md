Ending the Game
==================

Now that we have obstacles, we need to end the game if you hit them. To do so, we need to check for a collision
between the character and an obstacle. Like we did for touches, we need another method for that.

Add the following below the closing bracket of your ```update``` method,
but before the ```@end```:

    -(void) collisionWithObstacle
    {
        //this gets called when the bird collides with an obstacle
        [self gameOver];
    }

Keeping Score
=============

The last thing that we need to do is keep score. To do that, we first need to
create and display the score counter. Before the closing bracket of your
```initialize``` method, add the following:

    [self showScore];

If you play the game now, you will notice that a 0 is displayed, but
your points don't increase. We will need a new method for that. After
the closing bracket of your ```collisionWithObstacle``` method,
but before the ```@end```:

    -(void) passedObstacle
    {
        // Update the score
        [self increaseScore];
    }

Run the game again and you should see your finished Flappy Bird game! Congratulations - you've
built your first iPhone game!

Want to make your own iPhone game this summer? Enroll in our
[Online Academy](https://www.makegameswith.us/online-academy/)!
