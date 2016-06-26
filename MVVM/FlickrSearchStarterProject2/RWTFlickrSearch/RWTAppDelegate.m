//
//  RWTAppDelegate.m
//  RWTFlickrSearch
//
//  Created by Colin Eberhardt on 20/05/2014.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

#import "RWTAppDelegate.h"
#import "RWTFlickrSearchViewController.h"
#import "RWTViewModelServicesImpl.h"

@interface RWTAppDelegate ()

@property (nonatomic, retain) UINavigationController *navigationController;

@property (nonatomic, strong) RWTViewModelServicesImpl *viewModelServices;


@end

@implementation RWTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // create a navigation controller and perform some simple styling
  self.navigationController = [UINavigationController new];
  self.navigationController.navigationBar.barTintColor = [UIColor darkGrayColor];
  [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
  
  // create and navigate to a view controller
  UIViewController *viewController = [self createInitialViewController];
  [self.navigationController pushViewController:viewController animated:NO];

  // show the navigation controller
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.rootViewController = self.navigationController;
  [self.window makeKeyAndVisible];
  return YES;
}

//- (UIViewController *)createInitialViewController {
//  return [[RWTFlickrSearchViewController alloc] init];
//}

#pragma mark - 更新方法
//- (UIViewController *)createInitialViewController {
//    self.viewModel = [RWTFlickrSearchViewModel new];
//    return [[RWTFlickrSearchViewController alloc] initWithViewModel:self.viewModel];
//}
#pragma mark -- 再更新
- (UIViewController *)createInitialViewController {
    self.viewModelServices = [RWTViewModelServicesImpl new];
    self.viewModelServices = [[RWTViewModelServicesImpl alloc] initWithNavigationController:self.navigationController];

    self.viewModel = [[RWTFlickrSearchViewModel alloc] initWithServices:self.viewModelServices];
    return [[RWTFlickrSearchViewController alloc] initWithViewModel:self.viewModel];
}

@end
