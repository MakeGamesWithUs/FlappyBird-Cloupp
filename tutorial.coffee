exports             = exports ? @
exports.DefaultFile = "FlappyBird.spritebuilder/Source/GamePlayScene.m"

exports.Tutorials = () ->
  tutorial "Move the Ships!", ->
    step "Welcome",
      """
        Your First iPhone Game!
        =======================

        This tutorial is going to teach you how to make your own Flappy Bird for the iPhone! Your game will be written
        in Objective-C, the language used to write all native iPhone apps. You will be using a game
        engine called Cocos2D that is very popular in the game industry.

        What Goes Into a Game?
        ======================

        We've set up the basic game structure for you - a background and a top bar to keep score.
        Your job will be to add the main character and the obstacles. You'll then learn how to check
        if the player is touching the screen to make the character jump. If the character hits an obstacle,
        the game is over! Now go to the next step to start coding!

      """, false

    step "Adding the Character",
      """
        Creating the Character
        ===================

        We've created a Character class for you to use and imported it at the top of the file.
        To create the character, add the following line to the ```initialize``` method where it says
        ```// put your initialization code below this line```:

        <div class="code-editor-ex">    // initialize the character
            character = [Character createFlappy];</div>

        In order to have the character appear, you'll have to add it to the scene. On a new line
        under where you initialized your character, write:

        <div class="code-editor-ex">    // add the character to the scene
            [self addToScene:character];</div>

        Now hit the run button and take a look at what you have built! You should see your
        character fall to the bottom. That's because we haven't given him any velocity yet!
      """

    step "Start to fly!",
      """
        Basic Syntax
        ============

        Objective-C syntax for declaring and calling methods is what makes it look the most different from
        languages like C++ and Java. The good news is that once you learn how it's done the Objective-C way,
        it will become clear that these languages follow the same basic principles.

        To call a method: ```[ObjectName methodName];```
        For example: ```[character flap];```
        To call a method and pass a parameter: ```[ObjectName methodName: parameter];```
        For example: ```[self addToScene: character];```

        Make The Bird Flap!
        ===================

        For your game to respond to input, we have to write a new method to be run whenever
        the player taps the screen. Add the following after the closing bracket of the init method
        but before the ```@end```:

        <div class="code-editor-ex">- (void)tap
        {
            // this will get called every time the player
            // taps the screen.
        }</div>

        Now that we have code that is run every time the player taps the screen, we want to make
        the bird flap. Inside your ```tap```
        method, add the following code:

        <div class="code-editor-ex">    [character flap];</div>

        Now run the game again. This time, try to tap on the screen to see the bird flap!
      """

    step "Moving to the Right!",
      """
        Creating an Update Loop
        =============

        You probably noticed that your bird only goes up and down, not to the right like
        it should.

        For this sort of logic, games typically use an "update loop." What happens is that some
        code is run really fast - up to 60 times per second! That code usually checks things like
        player health, whether enemies have died, and allows you to program actions that repeat constantly, like moving our bird to the right!

        In order to create an update loop, you need to add a new method. Below the
        closing bracket of your ```tap``` method, but before the ```@end```,
        add the following:

        <div class="code-editor-ex">- (void)update:(CCTime)delta
        {
            // this will be run every frame.
            // delta is the time that has elapsed since the last time it was run.
        }</div>

        Making the Character Move
        =============

        In your update method, add the following:

        <div class="code-editor-ex">    [character move];</div>

        Now run the game again. You should see the character moving now!
      """

    step "Adding Obstacles",
      """
        The First Obstacle
        ==================

        So far our bird is moving and flapping but it's not really fun yet. Lets add obstacles
        for you to avoid!

        For that we have created a simple method for you: ```addObstacle``` To use it, in your ```initialize```
        method, simply add:

        <div class="code-editor-ex">    [self addObstacle];</div>

        Then run the game. You should see a random obstacle appear!

        More Obstacles
        ==============

        Now that we have one obstacle, lets add more! In your ```initialize``` method,
        right after your previous ```[self addObstacle];```,
        initialize the ```timeSinceObstacle``` variable like so:

        <div class="code-editor-ex">    timeSinceObstacle = 0;</div>

        What we want to do is add a new obstacle at some regular interval.
        This time in your ```update``` method, try adding:

        <div class="code-editor-ex">    // Increment the time since last obstacle was added
            // delta is ~1/60th of a second
            timeSinceObstacle += delta;

            // Check to see if two seconds have passed
            if (timeSinceObstacle > 2)
            {
              // Add a new obstacle
                [self addObstacle];

                // Then reset the timer.
                timeSinceObstacle = 0;
            }</div>

        Now run the game again. See if you can make it easier or harder by making
        the ```2``` higher or lower!
      """

    step "Finishing Up",
      """
        Ending the Game
        ==================

        Now that we have obstacles, we need to end the game if you hit them. To do so, we need to check for a collision
        between the character and an obstacle. Like we did for touches, we need another method for that.

        Add the following below the closing bracket of your ```update``` method,
        but before the ```@end```:

        <div class="code-editor-ex">-(void) collisionWithObstacle
        {
            //this gets called when the bird collides with an obstacle
            [self gameOver];
        }</div>

        Keeping Score
        =============

        The last thing that we need to do is keep score. To do that, we first need to
        create and display the score counter. Before the closing bracket of your
        ```initialize``` method, add the following:

        <div class="code-editor-ex">    [self showScore];</div>

        If you play the game now, you will notice that a 0 is displayed, but
        your points don't increase. We will need a new method for that. After
        the closing bracket of your ```collisionWithObstacle``` method,
        but before the ```@end```:

        <div class="code-editor-ex">-(void) passedObstacle
        {
            // Update the score
            [self increaseScore];
        }</div>

        Run the game again and you should see your finished Flappy Bird game! Congratulations - you've
        built your first iPhone game!

        Want to make your own iPhone game this summer? Enroll in our
        [Online Academy](https://www.makegameswith.us/online-academy/)!
      """
