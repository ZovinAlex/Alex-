//
//  RWTAppDelegate.h
//  RWTFlickrSearch
//
//  Created by Colin Eberhardt on 20/05/2014.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

@import UIKit;
#import "RWTFlickrSearchViewModel.h"

@interface RWTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) RWTFlickrSearchViewModel *viewModel;

@end
