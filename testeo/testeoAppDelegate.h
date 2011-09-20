//
//  testeoAppDelegate.h
//  testeo
//
//  Created by  on 25/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@class MainViewController;

@interface testeoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    //UIViewController *_mainViewController;
    
    UINavigationController *navigationController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
//@property (nonatomic, retain) IBOutlet UIViewController *mainViewController;


@end
