//
//  BNRReminderViewController.m
//  Hypnosister
//
//  Created by Haihan Wang on 15/8/22.
//  Copyright (c) 2015年 malong tech. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()
@property(nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@end

@implementation BNRReminderViewController

- (instancetype) init {
    self = [super init];
    if(self) {
        self.tabBarItem.title = @"Reminder";
    }
    return self;
}

- (IBAction)addReminder:(id)sender {
    NSDate *date= self.datePicker.date;
    NSLog(@"Date: %@", date);
    UILocalNotification *notify = [[UILocalNotification alloc] init];
    notify.alertTitle = @"this is title";
    notify.alertBody = @"this is body";
    notify.fireDate = date;
    // must regist local notify
    //[[UIApplication sharedApplication] scheduleLocalNotification: notify];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:10];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
