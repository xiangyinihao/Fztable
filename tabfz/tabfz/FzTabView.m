//
//  FzTabView.m
//  tabfz
//
//  Created by xpy-pc on 2018/4/8.
//  Copyright © 2018年 XPY. All rights reserved.
//

#import "FzTabView.h"
#define cellID @"cell"
@interface FzTabView()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *fzTableView;

@end
@implementation FzTabView

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self =[super initWithFrame:frame]) {
        
        self.fzTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) style:UITableViewStylePlain];
        self.fzTableView.delegate = self;
        self.fzTableView.dataSource = self;
        [self addSubview:self.fzTableView];
    }
    
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArr.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = self.dataArr[indexPath.row];
    
    return cell;
    
}


@end
