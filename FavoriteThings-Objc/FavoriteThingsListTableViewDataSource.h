//
//  FavoriteThingsListTableViewDataSource.h
//  FavoriteThings-Objc
//
//  Created by Rutan on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
//import the UIKIt
@import UIKit;

//create the DataSource class; comply with the protocol
@interface FavoriteThingsListTableViewDataSource : NSObject <UITableViewDataSource>

//because this is our own method and we need to call it in a different object
- (void)registerTableView:(UITableView *)tableView;

@end
