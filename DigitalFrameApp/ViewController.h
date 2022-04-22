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
-(IBAction)toggleAction:(id)sender;
@end

