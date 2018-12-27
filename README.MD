# DynamicTable

Dynamic Table make easier how use and inject cells on your **UITableView**. Just your custom **UITableViewCell** should implement a **protocol** and **overwrite** one method. 

# How it uses
- Just copy and paste [Library/](https://github.com/cbedoy/DynamicTable/tree/master/DynamicTable/Library) folder into your project.
- Your UITableViewController should have an UITableView, so just extends from DynamicTableViewController
```objective-c
#import "DynamicTableViewController.h"
@interface AmazingViewController : DynamicTableViewController
```
- And connect you UITableView as IBOutlet of your CustomViewController
- Add DynamicCell protocol in your custom UITableViewCell
```objective-c
@interface AvatarCell : UITableViewCell<DynamicCell>
```
- Overwrite loadCellModel method
```objective-c
- (void)loadCellModel:(NSDictionary *)cellModel{
    //your custom implementatiion here... 
    /*
    [[self avatarView] sd_setImageWithURL:[NSURL URLWithString:cellModel[@"url"]]
                         placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    */
}
```

# How it works
```objective-c
//Inject your elements when you have

- (void)amazingResponse:(NSArrray *)elements{
    elements.forEach {
        [self.viewModel addObject:@{
                                @"nib" : @"SectionCell",
                                @"value": it[@"amazingValue"],
                                @"custom" : it[@"avazingCustomValue"]
                                @"height" : @(44)
                                }];
    }
    
    [[self tableView]reloadData]; //Also works insert or remove elements :)
}


- (UITableViewCell *) cellForCellModel:(NSDictionary *)cellModel
{
    NSString *nibString = cellModel[@"nib"];
    UITableViewCell *cell = [[self tableView] dequeueReusableCellWithIdentifier:nibString];
    if (!cell && nibString){
        UINib *nib = [UINib nibWithNibName:nibString bundle:nil];
        [[self tableView] registerNib:nib forCellReuseIdentifier:nibString];
        cell = [[self tableView] dequeueReusableCellWithIdentifier:nibString];
    }
    if ([cell conformsToProtocol:@protocol(DynamicCell)]){
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
```

# How it looks
![With a little of magic](https://raw.githubusercontent.com/cbedoy/DynamicTable/master/Media/media.png)

# Author

[Carlos Bedoy](https://www.linkedin.com/in/carlos-bedoy-34248187/) | Lead Mobile Enginner at DagM8

# License

    Copyright 2018 Carlos Bedoy

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


