//
//  BNRHypnosisViewController.m
//  Hypnosister
//
//  Created by Haihan Wang on 15/8/22.
//  Copyright (c) 2015年 malong tech. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnosisViewController ()

@end

@implementation BNRHypnosisViewController
- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"Hypnosis";
    }
    return self;
}
- (void)loadView {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];

    CGRect big = scrollView.bounds;
    big.size.height *= 2;
    big.size.width *= 2;
    BNRHypnosisView *firstView = [[BNRHypnosisView alloc] initWithFrame:big];
    [scrollView addSubview:firstView];
    scrollView.contentSize = big.size;
    scrollView.pagingEnabled = true;

    self.view = scrollView;
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
