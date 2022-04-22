//
//  ViewController.m
//  DigitalFrameApp
//
//  Created by beintech on 2022/04/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imgView;
@synthesize toggleButton;
@synthesize speedSlider;
@synthesize speedLabel;

-(IBAction)toggleAction:(id)sender{
    if([imgView isAnimating]){
        [imgView stopAnimating];
        [toggleButton setTitle:@"START" forState:UIControlStateNormal];
    }else{
        [imgView startAnimating];
        [toggleButton setTitle:@"STOP" forState:UIControlStateNormal];
    }
    
}

-(IBAction)changeSpeedAction:(id)sender{
    imgView.animationDuration = 15 - speedSlider.value;
    [imgView startAnimating];
    [toggleButton setTitle:@"STOP" forState:UIControlStateNormal];
    NSString *str = [[NSString alloc]initWithFormat:@"%f",speedSlider.value];
    speedLabel.text =str;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *Images = [[NSArray alloc]initWithObjects:
                       [UIImage imageNamed:@"1.jpg"],
                       [UIImage imageNamed:@"2.jpg"],
                       [UIImage imageNamed:@"3.jpg"],
                       [UIImage imageNamed:@"4.jpg"],
                       [UIImage imageNamed:@"5.jpg"],
                       [UIImage imageNamed:@"6.jpg"],
                       [UIImage imageNamed:@"7.jpg"],
                       [UIImage imageNamed:@"8.jpg"],
                       [UIImage imageNamed:@"9.jpg"],
                       [UIImage imageNamed:@"10.jpg"],
                       [UIImage imageNamed:@"11.jpg"],
                       [UIImage imageNamed:@"12.jpg"],
                       [UIImage imageNamed:@"13.jpg"],
                       [UIImage imageNamed:@"14.jpg"],
                       [UIImage imageNamed:@"15.jpg"],
                       nil];
    imgView.animationImages = Images;
    imgView.animationDuration = 15.0;
    
}


@end
