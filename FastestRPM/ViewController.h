//
//  ViewController.h
//  FastestRPM
//
//  Created by Alain  on 2015-05-14.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *needle;

@property (weak, nonatomic) IBOutlet UIImageView *speedometer;

-(IBAction)panGesture:(UIPanGestureRecognizer*)sender;

@end

