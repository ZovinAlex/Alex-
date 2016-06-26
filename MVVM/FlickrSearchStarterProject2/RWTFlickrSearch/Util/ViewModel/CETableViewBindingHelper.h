
//
//  CETableViewBindingHelper.h
//  RWTFlickrSearch
//
//  Created by yztc on 16/6/25.
//  Copyright © 2016年 Colin Eberhardt. All rights reserved.
//

#ifndef CETableViewBindingHelper_h
#define CETableViewBindingHelper_h

+ (instancetype) bindingHelperForTableView:(UITableView *)tableView
sourceSignal:(RACSignal *)source
selectionCommand:(RACCommand *)selection
templateCell:(UINib *)templateCellNib;

#endif /* CETableViewBindingHelper_h */
