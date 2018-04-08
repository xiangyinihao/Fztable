//
//  AppDelegate.h
//  tabfz
//
//  Created by xpy-pc on 2018/4/8.
//  Copyright © 2018年 XPY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

