//
//  AvatarCell.m
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import "AvatarCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
@implementation AvatarCell

- (void)awakeFromNib{
    [super awakeFromNib];
    
    [[[self avatarView] layer] setBorderColor:[UIColor grayColor].CGColor];
    [[[self avatarView] layer] setBorderWidth:1];
    [[self.avatarView layer] setCornerRadius:self.avatarView.frame.size.height / 2];
    [[self.avatarView layer] setMasksToBounds:YES];
    [[self avatarView] setClipsToBounds:YES];
    
    [[[self onlineView] layer] setBorderColor:[UIColor whiteColor].CGColor];
    [[[self onlineView] layer] setBorderWidth:4];
    [[self.onlineView layer] setCornerRadius:self.onlineView.frame.size.height / 2];
    [[self.onlineView layer] setMasksToBounds:YES];
    [[self onlineView] setClipsToBounds:YES];
}

- (void)loadCellModel:(NSDictionary *)cellModel{
    [[self avatarView] sd_setImageWithURL:[NSURL URLWithString:cellModel[@"url"]]
                         placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    
}

@end
