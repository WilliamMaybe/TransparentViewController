//
//  TransparentViewController.m
//  TransparentViewController
//
//  Created by williamzhang on 15/10/23.
//  Copyright © 2015年 William Zhang. All rights reserved.
//

#import "TransparentViewController.h"

@implementation TransparentViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    [self.view addGestureRecognizer:tapGesture];
}

- (void)dismiss {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.view setBackgroundColor:[UIColor colorWithWhite:0.0 alpha:0.5]];
}

@end
