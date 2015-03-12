//
//  ViewController.m
//  TicTacToe
//
//  Created by Micah Lanier on 3/12/15.
//  Copyright (c) 2015 Micah Lanier Design and Illustration. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
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


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)findLabelUsingPoint:(CGPoint)point{

    CGPoint point = self.

    //    CGPoint labelOnePoint = self.labelOne.center;
//    CGPoint labelTwoPoint = self.labelTwo.center;
//    CGPoint labelThreePoint = self.labelThree.center;
//    CGPoint labelFourPoint = self.labelFour.center;
//    CGPoint labelFivePoint = self.labelFive.center;
//    CGPoint labelSixPoint = self.labelSix.center;
//    CGPoint labelSevenPoint = self.labelSeven.center;
//    CGPoint labelEightPoint = self.labelEight.center;
//    CGPoint labelNinePoint = self.labelNine.center;
}

- (IBAction)onLabelTapped:(UIGestureRecognizer *)gestureRecognizer
{
    if (<#condition#>) {
        <#statements#>
    } else if {
        <#statements#>
    }
}


@end
