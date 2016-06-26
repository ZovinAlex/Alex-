//
//  RWTFlickrSearchViewModel.h
//  RWTFlickrSearch
//
//  Created by yztc on 16/6/25.
//  Copyright © 2016年 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "RWTViewModelServices.h"
#import "RWTSearchResultsViewModel.h"

@interface RWTFlickrSearchViewModel : NSObject
//  searchText属性表示文本域中显示文本，
@property (nonatomic, strong) NSString *searchText;
//  title属性表示导航条上的标题。
@property (nonatomic, strong) NSString *title;


@property (strong, nonatomic) RACCommand *executeSearch;

- (instancetype)initWithServices:(id<RWTViewModelServices>)services;


@end
