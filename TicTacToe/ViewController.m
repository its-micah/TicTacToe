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
@property UILabel *pickedLabel;
@property NSArray *labelArray;
@property NSInteger player;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelArray = [NSArray arrayWithObjects:self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];
    self.player = 0;
}



- (void)findLabelUsingPoint:(CGPoint)point {

    if (CGRectContainsPoint(self.labelOne.frame, point)) {
        self.pickedLabel = self.labelOne;
    } else if (CGRectContainsPoint(self.labelTwo.frame, point)) {
        self.pickedLabel = self.labelTwo;
    } else if (CGRectContainsPoint(self.labelThree.frame, point)) {
        self.pickedLabel = self.labelThree;
    } else if (CGRectContainsPoint(self.labelFour.frame, point)) {
        self.pickedLabel = self.labelFour;
    } else if (CGRectContainsPoint(self.labelFive.frame, point)) {
        self.pickedLabel = self.labelFive;
    } else if (CGRectContainsPoint(self.labelSix.frame, point)) {
        self.pickedLabel = self.labelSix;
    } else if (CGRectContainsPoint(self.labelSeven.frame, point)) {
        self.pickedLabel = self.labelSeven;
    } else if (CGRectContainsPoint(self.labelEight.frame, point)) {
        self.pickedLabel = self.labelEight;
    } else if (CGRectContainsPoint(self.labelNine.frame, point)) {
        self.pickedLabel = self.labelNine;
    }
}




- (void)updatePlayerInfo {

    if (self.player == 0) {
        self.pickedLabel.text = @"x";
        self.pickedLabel.textColor = [UIColor blueColor];
    }
    if (self.player == 1) {
        self.pickedLabel.text = @"O";
        self.pickedLabel.textColor = [UIColor redColor];
    }

}


- (IBAction)onLabelTapped:(UIGestureRecognizer *)gestureRecognizer {
    //CGPoint tapped = [gestureRecognizer locationInView:self.view];
    gestureRecognizer.delegate = self;
    if (gestureRecognizer.state == UIGestureRecognizerStateRecognized) {
        [self findLabelUsingPoint:[gestureRecognizer locationInView:self.view]];
        [self updatePlayerInfo];




    }
}


@end
