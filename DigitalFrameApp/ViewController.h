//
//  ViewController.h
//  DigitalFrameApp
//
//  Created by beintech on 2022/04/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) IBOutlet UIImageView *imgView;
@property(nonatomic, strong) IBOutlet UIButton * toggleButton;
@property(nonatomic, strong) IBOutlet UISlider *speedSlider;
@property(nonatomic, strong) IBOutlet UILabel *speedLabel;

-(IBAction)changeSpeedAction:(id)sender;
-(IBAction)toggleAction:(id)sender;
@end

