//
//  ViewController.h
//  Watch
//
//  Created by Izaak Meckler on 2/20/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    IBOutlet UITextField *ipField;
    IBOutlet UITextField *passField;
    IBOutlet UITextField *userField;
}
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UITextField *ipField;
@property (nonatomic, retain) IBOutlet UITextField *userField;
@property (nonatomic, retain) IBOutlet UITextField *passField;

- (void)updateImage;
@end
