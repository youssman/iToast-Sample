//
//  ViewController.h
//  iToast
//
//  Created by Youssef Haiti on 13/05/2015.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)didTapBasic:(id)sender;
- (IBAction)didTapBottom:(id)sender;
- (IBAction)didTapTop:(id)sender;
- (IBAction)didTapLong:(id)sender;
- (IBAction)didTapShort:(id)sender;
- (IBAction)didTapNormal:(id)sender;
- (IBAction)didTapCustom:(id)sender;
- (IBAction)didTapInfo:(id)sender;
- (IBAction)didTapNotice:(id)sender;
- (IBAction)didTapError:(id)sender;
- (IBAction)didTapWarning:(id)sender;
- (IBAction)didTapCornerRadius:(id)sender;
- (IBAction)didTapBgAlpha:(id)sender;
- (IBAction)didTapUseShadow:(id)sender;
- (IBAction)didTapFontSize:(id)sender;
- (IBAction)didTapCustomPosition:(id)sender;

@property(nonatomic, strong) IBOutlet UITextField *customDuration;
@property(nonatomic, strong) IBOutlet UITextField *customRadius;
@property(nonatomic, strong) IBOutlet UITextField *customAlpha;
@property(nonatomic, strong) IBOutlet UITextField *customFontSize;
@property(nonatomic, strong) IBOutlet UITextField *customLeftOffset;
@property(nonatomic, strong) IBOutlet UITextField *customTopOffset;

@end

