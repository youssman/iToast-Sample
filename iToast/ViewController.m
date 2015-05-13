//
//  ViewController.m
//  iToast
//
//  Created by Youssef Haiti on 13/05/2015.
//
//

#import "ViewController.h"
#import "iToast.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];

  [tap setCancelsTouchesInView:NO];
  [self.view addGestureRecognizer:tap];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark Position

- (IBAction)didTapBasic:(id)sender {
  [[iToast makeText:NSLocalizedString(@"The activity has been successfully saved.", @"")] show];
}

- (IBAction)didTapBottom:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"The activity has been successfully saved.", @"")]
    setGravity:iToastGravityBottom] show];
}

- (IBAction)didTapTop:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"The activity has been successfully saved.", @"")]
    setGravity:iToastGravityTop] show];
}

- (IBAction)didTapCustomPosition:(id)sender {
  [[[[iToast makeText:NSLocalizedString(@"The activity has been successfully saved.", @"")] setPosition:CGPointMake(_customLeftOffset.text.floatValue, _customTopOffset.text.floatValue)] setGravity:0] show];
}

#pragma mark Duration

- (IBAction)didTapLong:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"Something to display a very long time", @"")] setDuration:iToastDurationLong] show];
}

- (IBAction)didTapShort:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"Something to display a very short time", @"")] setDuration:iToastDurationShort] show];
}

- (IBAction)didTapNormal:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"Something to display a normal time", @"")] setDuration:iToastDurationNormal] show];
}

- (IBAction)didTapCustom:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"Something to display with a custom time", @"")] setDuration:_customDuration.text.integerValue] show];
}

#pragma mark Type

- (IBAction)didTapInfo:(id)sender {
  [[iToast makeText:NSLocalizedString(@"Info : The activity has been successfully saved.", @"")] show:iToastTypeInfo];
}

- (IBAction)didTapNotice:(id)sender {
  [[iToast makeText:NSLocalizedString(@"Notice : The activity has been successfully saved.", @"")] show:iToastTypeNotice];
}

- (IBAction)didTapError:(id)sender {
  [[iToast makeText:NSLocalizedString(@"Error : The activity has been successfully saved.", @"")] show:iToastTypeError];
}

- (IBAction)didTapWarning:(id)sender {
  [[iToast makeText:NSLocalizedString(@"Warning : The activity has been successfully saved.", @"")] show:iToastTypeWarning];
}

#pragma mark Appearance

- (IBAction)didTapCornerRadius:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"Warning : The activity has been successfully saved.", @"")] setCornerRadius:_customRadius.text.floatValue] show];
}

- (IBAction)didTapBgAlpha:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"Warning : The activity has been successfully saved.", @"")] setBgAlpha:_customAlpha.text.floatValue] show];
}

- (IBAction)didTapUseShadow:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"Warning : The activity has been successfully saved.", @"")] setUseShadow:YES] show];
}

- (IBAction)didTapFontSize:(id)sender {
  [[[iToast makeText:NSLocalizedString(@"Warning : The activity has been successfully saved.", @"")] setFontSize:_customFontSize.text.floatValue] show];
}

#pragma mark Keyboard should dismiss

-(void)dismissKeyboard {
  [self.view endEditing:YES];
}

@end
