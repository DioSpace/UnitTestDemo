//
//  AppDelegate.m
//  UnitTestDemo
//
//  Created by hello on 2019/10/26.
//  Copyright © 2019 Dio. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    self.window.rootViewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
