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

    - (void)tap
    {
        // this will get called every time the player
        // taps the screen.
    }

Now that we have code that is run every time the player taps the screen, we want to make
the bird flap. Inside your ```tap```
method, add the following code:

    [character flap];

Now run the game again. This time, try to tap on the screen to see the bird flap!
