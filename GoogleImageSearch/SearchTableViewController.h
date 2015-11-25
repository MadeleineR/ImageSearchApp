//
//  SearchTableViewController.h
//  GoogleImageSearch
//
//  Created by Client7 on 25.11.15.
//  Copyright © 2015 fhtw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchTableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchbar;


@end
