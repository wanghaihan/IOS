//
//  MLv3P2FViewController.m
//  v3Demo
//
//  Created by Haihan Wang on 15/8/26.
//  Copyright (c) 2015年 malong tech. All rights reserved.
//

#import "MLv3P2FViewController.h"
#import "MLv3Line.h"
#import "MLv3DrawView.h"

@interface MLv3P2FViewController ()

@end

@implementation MLv3P2FViewController

- (void) loadView {
    self.view = [[MLv3DrawView alloc] initWithFrame:CGRectZero];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
