//
//  AppDelegate.h
//  MyAvPlayer
//
//  Created by appledeveloper on 20/02/19.
//  Copyright © 2019 appledeveloper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

API_AVAILABLE(tvos(10.0))
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

