//
//  AppDelegate.m
//  v3Demo
//
//  Created by Haihan Wang on 15/8/26.
//  Copyright (c) 2015年 malong tech. All rights reserved.
//

#import "AppDelegate.h"
#import "MLv3DiscoveriesController.h"
#import "MLv3MeTableViewController.h"
#import "MLv3P2FViewController.h"
#import "MLv3P2TViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    MLv3DiscoveriesController *discoverController = [[MLv3DiscoveriesController alloc] init];
    UINavigationController *discoverNavController = [[UINavigationController alloc] initWithRootViewController:discoverController];

    discoverController.title = @"Discover";
    discoverController.tabBarItem.image = [UIImage imageNamed:@"292"];

    MLv3MeTableViewController *meController = [[MLv3MeTableViewController alloc] init];
    UINavigationController *meNavController = [[UINavigationController alloc] initWithRootViewController:meController];
    meNavController.title = @"Me";
    meNavController.tabBarItem.image = [UIImage imageNamed:@"183"];

    MLv3P2FViewController *p2fController = [[MLv3P2FViewController alloc] init];
    p2fController.title = @"Photo to Fashion";
    p2fController.tabBarItem.image = [UIImage imageNamed:@"273"];

    MLv3P2TViewController *p2tController = [[MLv3P2TViewController alloc] init];
    p2tController.title = @"Photo to Things";
    p2tController.tabBarItem.image = [UIImage imageNamed:@"274"];

    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[ discoverNavController,p2fController, meNavController,  p2tController  ];
    self.window.rootViewController = tabBarController;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
