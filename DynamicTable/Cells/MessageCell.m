//
//  MessageCell.m
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import "MessageCell.h"

@implementation MessageCell

- (void)loadCellModel:(NSDictionary *)cellModel{
    self.labelView.text = cellModel[@"value"];
}



@end
