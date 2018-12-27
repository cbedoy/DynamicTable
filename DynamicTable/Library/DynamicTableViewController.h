//
//  DynamicTableViewController.h
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DynamicCell.h"
#import "DynamicCellDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface DynamicTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, DynamicCellDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *viewModel;

@end

NS_ASSUME_NONNULL_END
