//
//  ViewController.m
//  TicTacToe
//
//  Created by Micah Lanier on 3/12/15.
//  Copyright (c) 2015 Micah Lanier Design and Illustration. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property CGPoint point;
@property NSArray *labelArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelArray = [NSArray arrayWithObjects:self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];

}



- (void)findLabelUsingPoint:(CGPoint)Point{

 

    CGRectContainsPoint(self.labelOne.frame, self.labelOne.center);

//if we get cgpoint of touched location, if the tapped location cgpoint is equal to the center of the label than action

   
}

- (IBAction)onLabelTapped:(UIGestureRecognizer *)gestureRecognizer
{

    gestureRecognizer.delegate = self;
    if (gestureRecognizer.state == UIGestureRecognizerStateRecognized) {
        if (CGRectContainsPoint(self.labelOne.frame, self.labelOne.center)) {
            self.labelOne.text = @"x";
        }


    }
}


@end
