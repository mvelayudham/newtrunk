//
//  ViewController.m
//  SimpleApp
//
//  Created by Manoharan Velayutham on 11/14/14.
//  Copyright (c) 2014 Manoharan Velayutham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView * simpleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // ???: I hate harcoding view frame's
    self.simpleView = [[UIView alloc] initWithFrame:CGRectMake(60, 60, 100, 100)];
    [self.view addSubview:self.simpleView];
    
    UIButton * myButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [myButton setFrame:CGRectMake(190, 190, 200, 90)];
    [myButton addTarget:self action:@selector(sendMessage:) forControlEvents:UIControlEventTouchUpInside];
    [myButton setTitle:@"Some Button" forState:UIControlStateNormal];
    [myButton setTitleShadowColor:[UIColor brownColor] forState:UIControlStateNormal];
    [self.view addSubview:myButton];
    NSLog(@"View did loaded");
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"ViewWillAppear");
    [self.simpleView setBackgroundColor:[UIColor greenColor]];
}

//- (void)sendMessage:(UIEvent *)event {
//    NSLog(@"Button Pressed");
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
