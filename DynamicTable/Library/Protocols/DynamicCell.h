//
//  DynamicCell.h
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DynamicCellDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@protocol DynamicCell <NSObject>

- (void)loadCellModel:(NSDictionary *)cellModel;

@optional
@property (nonatomic, weak) id <DynamicCellDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
