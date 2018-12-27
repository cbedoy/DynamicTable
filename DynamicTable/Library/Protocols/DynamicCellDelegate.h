//
//  DynamicCellDelegate.h
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DynamicCellDelegate <NSObject>

- (void)performAction:(NSString *)action withArguments:(NSDictionary *)arguments;

@end

NS_ASSUME_NONNULL_END
