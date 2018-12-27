//
//  MessageCell.h
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DynamicCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface MessageCell : UITableViewCell<DynamicCell>
@property (weak, nonatomic) IBOutlet UILabel *labelView;

@end

NS_ASSUME_NONNULL_END
