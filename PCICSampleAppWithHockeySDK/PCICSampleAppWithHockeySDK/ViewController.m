//
//  ViewController.m
//  PCICSampleAppWithHockeySDK
//
//  Created by Tristan Behrens on 05.10.16.
//  Copyright © 2016 Porsche Digital Lab. All rights reserved.
//

#import "ViewController.h"

#import <HockeySDK/HockeySDK.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    @throw [NSException exceptionWithName:NSGenericException reason:@"Absichtlicher Crash" userInfo:nil];
    
}

- (IBAction)eventButtonPressed:(id)sender {

    BITMetricsManager *metricsManager = [BITHockeyManager sharedHockeyManager].metricsManager;
    
    [metricsManager trackEventWithName:@"Button Clicked"];

}

@end
