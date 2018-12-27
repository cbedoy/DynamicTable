//
//  SectionCell.m
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import "SectionCell.h"

@implementation SectionCell

- (void)loadCellModel:(NSDictionary *)cellModel{
    self.titleView.text = cellModel[@"value"];
}

@end
