//
//  AmazingViewController.m
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import "AmazingViewController.h"

@interface AmazingViewController ()

@end

@implementation AmazingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [NSMutableArray array];
    
    [self.viewModel addObject:@{
                                @"nib" : @"AvatarCell",
                                @"url": @"https://scontent.fmex4-1.fna.fbcdn.net/v/t1.0-9/48389278_2932772603415752_5126895975834583040_n.jpg?_nc_cat=105&_nc_ht=scontent.fmex4-1.fna&oh=32e1bd176fea6c23e749608080c10cc9&oe=5CD9CC2F",
                                @"height" : @(308)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"SectionCell",
                                @"value": @"Programming Languages",
                                @"height" : @(44)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Kotlin",
                                @"height" : @(44)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Java",
                                @"height" : @(44)
                                }];
    
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Objective - C",
                                @"height" : @(44)
                                }];

    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Javascript",
                                @"height" : @(44)
                                }];
    
    
    [self.viewModel addObject:@{
                                @"nib" : @"SectionCell",
                                @"value": @"Instruments",
                                @"height" : @(44)
                                }];
    
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Guitar",
                                @"height" : @(44)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Bass",
                                @"height" : @(44)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Ukulele",
                                @"height" : @(44)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Keyboard",
                                @"height" : @(44)
                                }];
    
    
    [self.viewModel addObject:@{
                                @"nib" : @"SectionCell",
                                @"value": @"Skills",
                                @"height" : @(44)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"UI | UX Design",
                                @"height" : @(44)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Powerlifting",
                                @"height" : @(44)
                                }];
    
    [self.viewModel addObject:@{
                                @"nib" : @"MessageCell",
                                @"value": @"Music composition",
                                @"height" : @(44)
                                }];
    
    [[self tableView] reloadData];
}



@end
