//
//  ViewController.m
//  SimpleTempConvertor
//
//  Created by Suyash Joshi on 10/9/13.
//  Copyright (c) 2013 Suyash Joshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tempratureField;
@synthesize covertedTemprature;

-(IBAction)dismissKeyboard:(id) sender {
    [sender resignFirstResponder];
    [self.tempratureField resignFirstResponder];
}

- (IBAction)viewTapped:(id)sender {
    [self.tempratureField resignFirstResponder];
}

- (IBAction)convertTemprature:(id)sender {
    
    UIButton * convertButton = (UIButton *)sender;
    
    double tempratureValue = [self.tempratureField.text doubleValue];
    
    if (convertButton.tag == 1) {
        
        double celsius = (tempratureValue - 32) / 1.8;
        
        NSString *resultString = [[NSString alloc] initWithFormat: @"%.2f deg Farenheit is %.2f deg Celsius", tempratureValue, celsius];
        
        covertedTemprature.text = resultString;
        
        NSLog(@"Button's title was: Celsius to Farenheit");
    }
    
    else if (convertButton.tag == 0) {
        
        double farenheit = (1.8 * tempratureValue) + 32;
        
        NSString *resultString = [[NSString alloc] initWithFormat: @"%.2f deg Celsius is %.2f deg Farenheit", tempratureValue, farenheit];
        
        covertedTemprature.text = resultString;
        
        NSLog(@"Button's title was: Farenheit to Celsius");
        
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
