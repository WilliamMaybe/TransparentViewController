//
//  ViewController.m
//  TransparentViewController
//
//  Created by williamzhang on 15/10/23.
//  Copyright © 2015年 William Zhang. All rights reserved.
//

#import "ViewController.h"
#import "TransparentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)clickToJump:(id)sender {
    TransparentViewController *VC = [[TransparentViewController alloc] init];
    
    if ([[UIDevice currentDevice].systemName floatValue] >= 8.0) {
        self.providesPresentationContextTransitionStyle = YES;
        self.modalPresentationStyle = UIModalPresentationCurrentContext;
        [self presentViewController:VC animated:YES completion:nil];
    } else {
        self.view.window.rootViewController.modalPresentationStyle = UIModalPresentationCurrentContext;
        [self presentViewController:VC animated:YES completion:nil];
        // 这个不知道有没有必要，没试过推多点的VC
        self.view.window.rootViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
