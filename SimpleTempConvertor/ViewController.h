//
//  ViewController.h
//  SimpleTempConvertor
//
//  Created by Suyash Joshi on 10/9/13.
//  Copyright (c) 2013 Suyash Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempratureField;
@property (weak, nonatomic) IBOutlet UILabel *covertedTemprature;

- (IBAction)convertTemprature:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;
- (IBAction)viewTapped:(id)sender;


@end
