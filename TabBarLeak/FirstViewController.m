//
//  FirstViewController.m
//  TabBarLeak
//
//  Created by Guillaume Algis on 27/10/2015.
//  Copyright © 2015 Guillaume Algis. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

- (IBAction)addSecondViewController:(id)sender;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addSecondViewController:(id)sender
{
    UIViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    self.tabBarController.viewControllers = @[self, secondViewController];
}

@end
