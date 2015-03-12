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


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    CGPoint oneCenter = self.labelOne.center;
//    CGPoint twoCenter = self.labelTwo.center;
//    CGPoint threeCenter = self.labelThree.center;
//    CGPoint fourCenter = self.labelFour.center;
//    CGPoint fiveCenter = self.labelFive.center;
//    CGPoint sixCenter = self.labelSix.center;
//    CGPoint sevenCenter = self.labelSeven.center;
//    CGPoint eightCenter = self.labelEight.center;
//    CGPoint nineCenter = self.labelNine.center;

}



- (void)findLabelUsingPoint:(CGPoint)Point{

    CGPoint oneCenter = self.labelOne.center;
    CGPoint twoCenter = self.labelTwo.center;
    CGPoint threeCenter = self.labelThree.center;
    CGPoint fourCenter = self.labelFour.center;
    CGPoint fiveCenter = self.labelFive.center;
    CGPoint sixCenter = self.labelSix.center;
    CGPoint sevenCenter = self.labelSeven.center;
    CGPoint eightCenter = self.labelEight.center;
    CGPoint nineCenter = self.labelNine.center;

}

- (IBAction)onLabelTapped:(UIGestureRecognizer *)gestureRecognizer
{
   // CGPoint tap = [gestureRecognizer locationInView:self.labelOne.frame];

    if (gestureRecognizer.state == UIGestureRecognizerStateRecognized) {
        [self findLabelUsingPoint:self.labelOne.center];
        self.labelOne.text = @"x";
    }
}


@end
