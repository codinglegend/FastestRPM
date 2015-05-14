//
//  ViewController.m
//  FastestRPM
//
//  Created by Alain  on 2015-05-14.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "ViewController.h"

#define RADIANS(degrees) ((degrees * M_PI) / 180.0)

@interface ViewController ()

@end


@implementation ViewController

// side note: gesture.view accomplishes same purpose as [gesture view]

-(IBAction)panGesture:(UIPanGestureRecognizer*)gesture{
    
    CGPoint velocityTwoPoints = [gesture velocityInView:self.view];
    
    CGFloat velocity = sqrt(velocityTwoPoints.x*velocityTwoPoints.x + velocityTwoPoints.y*velocityTwoPoints.y);
    
    NSLog(@"Your velocity is %f", velocity);
    
    float needleSpeed = velocity/14.81;
    

    _needle.transform = CGAffineTransformMakeRotation(RADIANS(140+needleSpeed));
    
    if(gesture.state == UIGestureRecognizerStateEnded || gesture.state == UIGestureRecognizerStateCancelled || gesture.state == UIGestureRecognizerStateFailed){
        _needle.transform = CGAffineTransformMakeRotation(RADIANS(140));
//    }else if(gesture.state == UIGestureRecognizerStateChanged){
//         [NSTimer scheduledTimerWithTimeInterval:0.1
//                                         target:self
//                                        selector:@selector(targetMethod:)
//                                       userInfo:nil
//                                        repeats:NO];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // whatever you want to load when the app opens goes here?
    // this is just a method. look at the format.

    _needle.transform = CGAffineTransformMakeRotation(RADIANS(140));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    

}


//   notes to self: position needle by _needle.center = self.speedometer.center; to center it on the dial OR CGMakePoint(x,y) to pick a specific spot. The change the point at which it rotates AROUND, that's the anchor. this would of course go in the viewDidLoad





@end
