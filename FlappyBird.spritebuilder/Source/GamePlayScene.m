#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // put your initialization code below this line
    
    // initialize the character
    character = [Character createFlappy];
    
    // add the character to the scene
    [self addToScene:character];
    
    [self addObstacle];
    [self showScore];
    
    // put your initialization code above this line
}

// put new methods below this line

- (void)tap
{
    // this will get called every time the player
    // taps the screen.
    
    [character flap];
}

- (void)update:(CCTime)delta
{
    // this will be run every frame.
    // delta is the time that has elapsed since the last time it was run.
    timeSinceObstacle = 0;
    
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
    
    [character move];
}

-(void) collisionWithObstacle
{
    //this gets called when the bird collides with an obstacle
    [self gameOver];
}

-(void) passedObstacle
{
    // Update the score
    [self increaseScore];
}

// put new methods above this line

@end
