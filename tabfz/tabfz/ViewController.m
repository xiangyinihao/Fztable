//
//  ViewController.m
//  tabfz
//
//  Created by xpy-pc on 2018/4/8.
//  Copyright © 2018年 XPY. All rights reserved.
//

#import "ViewController.h"
#import "FzTabView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonAction;
@property(nonatomic,strong)FzTabView *cView;
@end

@implementation ViewController
static BOOL isClick = YES;
- (IBAction)ButtonAction:(id)sender {
    
    if (isClick == YES) {
        
        FzTabView *c = [[FzTabView alloc]initWithFrame:CGRectMake(0, self.buttonAction.frame.size.height+30, self.view.frame.size.width, 300)];
        
        c.dataArr = @[@"1",@"2",@"3",@"4"].mutableCopy;
        
        [self.view addSubview:c];
        
        self.cView = c;

    }
    else{
        
        [self.cView removeFromSuperview];
    }
    
    isClick = !isClick;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
