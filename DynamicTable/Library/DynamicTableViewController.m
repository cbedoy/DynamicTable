//
//  DynamicTableViewController.m
//  DynamicTable
//
//  Created by Carlos Bedoy on 12/26/18.
//  Copyright © 2018 I am bedoy. All rights reserved.
//

#import "DynamicTableViewController.h"

@interface DynamicTableViewController ()

@end

@implementation DynamicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [[self tableView] setDelegate:self];
    [[self tableView] setDataSource:self];
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[self viewModel] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [self cellForCellModel:[[self viewModel] objectAtIndex:indexPath.row]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [self heightForCellViewModel:[[self viewModel] objectAtIndex:indexPath.row]];
}

- (CGFloat) heightForCellViewModel:(NSDictionary *)cellModel
{
    CGFloat cellHeight = [cellModel[@"height"] floatValue];
    cellHeight = cellHeight < 1 ? 1 : cellHeight;
    return cellHeight;
}

- (UITableViewCell *) cellForCellModel:(NSDictionary *)cellModel
{
    NSString        *nibString = cellModel[@"nib"];
    UITableViewCell *cell      = [[self tableView] dequeueReusableCellWithIdentifier:nibString];
    if (!cell && nibString)
    {
        UINib *nib = [UINib nibWithNibName:nibString bundle:nil];
        [[self tableView] registerNib:nib forCellReuseIdentifier:nibString];
        cell = [[self tableView] dequeueReusableCellWithIdentifier:nibString];
    }
    if ([cell conformsToProtocol:@protocol(DynamicCell)])
    {
        UITableViewCell <DynamicCell> *baseCell = (UITableViewCell <DynamicCell> *) cell;
        if ([baseCell respondsToSelector:@selector(setDelegate:)])
            [baseCell setDelegate:self];
        if ([baseCell respondsToSelector:@selector(loadCellModel:)])
            [baseCell loadCellModel:cellModel];
    }
    if (!cell)
        cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    return cell;
}

- (void)performAction:(NSString *)action withArguments:(NSDictionary *)arguments{
    
}

@end
