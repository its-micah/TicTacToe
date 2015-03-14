//
//  ViewController.m
//  TicTacToe
//
//  Created by Micah Lanier on 3/12/15.
//  Copyright (c) 2015 Micah Lanier Design and Illustration. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate, UIAlertViewDelegate>
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
//@property NSArray *labelArray;
@property BOOL player;
@property NSString *winner;
@property UIAlertView *alertView;
@property CGPoint originalCenter;
@property CGPoint labelFrameCenter;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.labelArray = [NSArray arrayWithObjects:self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine, nil];
    self.player = YES;
    self.whichPlayerLabel.text = @"X";
    self.originalCenter = self.whichPlayerLabel.center;
}


- (void)newGame {

    self.player = YES;
    self.labelOne.text = @"";
    self.labelTwo.text = @"";
    self.labelThree.text = @"";
    self.labelFour.text = @"";
    self.labelFive.text = @"";
    self.labelSix.text = @"";
    self.labelSeven.text = @"";
    self.labelEight.text = @"";
    self.labelNine.text = @"";
    self.winner = @"";
    self.whichPlayerLabel.text = @"X";


}

//method to set the label's location. so you can call it on any label and it will tell you what label it is

- (CGRect)findLabelUsingPoint:(CGPoint)point {

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
    return self.pickedLabel.frame;
}

//switches between x and o

- (void)updatePlayerInfo {

    if ((self.player == YES)) {
        self.pickedLabel.text = @"X";
        self.pickedLabel.textColor = [UIColor blueColor];
        self.whichPlayerLabel.text = @"O";
        self.player = NO;
    } else {
        self.pickedLabel.text = @"O";
        self.pickedLabel.textColor = [UIColor redColor];
        self.whichPlayerLabel.text = @"X";
        self.player = YES;
    }
}


- (IBAction)onLabelTapped:(UIGestureRecognizer *)gestureRecognizer {
    gestureRecognizer.delegate = self;
    if (gestureRecognizer.state == UIGestureRecognizerStateRecognized) {
        [self findLabelUsingPoint:[gestureRecognizer locationInView:self.view]];
        [self updatePlayerInfo];
        [self whoWon];
        if ([self.winner isEqualToString:@"X"]) {
            self.alertView = [[UIAlertView alloc] initWithTitle:@"WahOO!"
                                                        message:@"X is the winner"
                                                       delegate:self
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"New Game", nil];

            [self.alertView show];
        } else if ([self.winner isEqualToString:@"O"]) {
            self.alertView = [[UIAlertView alloc] initWithTitle:@"WahOO!"
                                                        message:@"O is the winner"
                                                       delegate:self
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"New Game", nil];
            [self.alertView show];
            self.whichPlayerLabel.text = @"X";
        }
    }
}



- (IBAction)panHandler:(UIGestureRecognizer *)gestureRecognizer {
    CGPoint point = [gestureRecognizer locationInView:self.view];
    //this sets the point being moved to wherever the user is dragging their x or o
    self.whichPlayerLabel.center = point;

    if (gestureRecognizer.state == UIGestureRecognizerStateEnded) {
//if this specific square contains the point that is being panned, then.

        //find what label we are at according to the point where the player is
        //  the rect is any label, we find which label by using [self findLabelUsingPoint:point];

        if (CGRectContainsPoint([self findLabelUsingPoint:point], point)) {
           [UIView animateWithDuration:.2 animations:^{
               self.pickedLabel.text = self.whichPlayerLabel.text;}];
               [self updatePlayerInfo];

            //below sets the winner. If we don't have this than we only get an alert when the clicked label equals a win. (since we now have two different gestures we need the 'winning' logic in both gestures)

                [self whoWon];
               if ([self.winner isEqualToString:@"X"]) {
                   self.alertView = [[UIAlertView alloc] initWithTitle:@"WahOO!"
                                                               message:@"X is the winner"
                                                              delegate:self
                                                     cancelButtonTitle:nil
                                                     otherButtonTitles:@"New Game", nil];

                   [self.alertView show];
               } else if ([self.winner isEqualToString:@"O"]) {
                   self.alertView = [[UIAlertView alloc] initWithTitle:@"WahOO!"
                                                               message:@"O is the winner"
                                                              delegate:self
                                                     cancelButtonTitle:nil
                                                     otherButtonTitles:@"New Game", nil];
                   [self.alertView show];
                   self.whichPlayerLabel.text = @"X";
           };
    } else { [UIView animateWithDuration:1.0 animations:^{
        self.whichPlayerLabel.center = self.originalCenter;
    }];}
}
}





- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        [self updatePlayerInfo];
        [self newGame];
    }
}

- (NSString *)whoWon {
    if (([self.labelOne.text isEqualToString:self.labelTwo.text]) &&
        [self.labelTwo.text isEqualToString:self.labelThree.text] &&
        (![self.labelOne.text isEqualToString:@""]))
    {
        self.winner = self.labelOne.text;
    } if (([self.labelFour.text isEqualToString:self.labelFive.text]) &&
               [self.labelFive.text isEqualToString:self.labelSix.text] &&
        (![self.labelFour.text isEqualToString:@""]))
    {
        self.winner = self.labelFour.text;
    } if (([self.labelSeven.text isEqualToString:self.labelEight.text]) &&
        [self.labelEight.text isEqualToString:self.labelNine.text] &&
               (![self.labelSeven.text isEqualToString:@""]))
    {
        self.winner = self.labelSeven.text;
    } if (([self.labelOne.text isEqualToString:self.labelFour.text]) &&
               [self.labelFour.text isEqualToString:self.labelSeven.text] &&
               (![self.labelSeven.text isEqualToString:@""]))
    {
        self.winner = self.labelOne.text;
    } if (([self.labelTwo.text isEqualToString:self.labelFive.text]) &&
               [self.labelFive.text isEqualToString:self.labelEight.text] &&
               (![self.labelFive.text isEqualToString:@""]))
    {
        self.winner = self.labelTwo.text;
    } if (([self.labelThree.text isEqualToString:self.labelSix.text]) &&
               [self.labelSix.text isEqualToString:self.labelNine.text] &&
               (![self.labelSix.text isEqualToString:@""]))
    {
        self.winner = self.labelThree.text;
    } if (([self.labelOne.text isEqualToString:self.labelFive.text]) &&
               [self.labelFive.text isEqualToString:self.labelNine.text] &&
               (![self.labelFive.text isEqualToString:@""]))
    {
        self.winner = self.labelOne.text;
    } if (([self.labelThree.text isEqualToString:self.labelFive.text]) &&
               [self.labelFive.text isEqualToString:self.labelSeven.text] &&
               (![self.labelFive.text isEqualToString:@""]))
    {
        self.winner = self.labelThree.text;
    }
    return self.winner;
}


@end
