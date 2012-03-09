//
//  AppDelegate.h
//  Watch
//
//  Created by Izaak Meckler on 2/20/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *window;
    IBOutlet UITextField *userName;
}

@property (strong, nonatomic) UIWindow *window;


- (NSString *)pathForTemporaryFileWithPrefix:(NSString *)prefix;

@end
