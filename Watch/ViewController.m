//
//  ViewController.m
//  Watch
//
//  Created by Izaak Meckler on 2/20/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "SSHWrapper.h"
#include <CFNetwork/CFNetwork.h>

@implementation ViewController
@synthesize ipField, userField, passField;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    [self updateImage];
    [super viewDidLoad];/*
    SSHWrapper *sshWrapper = [[SSHWrapper alloc] init];
    [sshWrapper connectToHost:@"128.135.223.194" port:22 user:@"" password:@""];
    [sshWrapper executeCommand:@"say hi"];*/
    
    timer = [NSTimer scheduledTimerWithTimeInterval:(5) 
                                             target:self 
                                           selector:@selector(updateImage) 
                                           userInfo:nil
                                            repeats:YES];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (void)updateImage
{
    NSURL *url = [NSURL URLWithString:@"http://ss.izaakmeckler.com/~izzy/snapshot.jpg"];
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    UIImage *currPic = [[UIImage alloc] initWithData:data];
    self.imageView.image = currPic;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}
@synthesize imageView         = _imageView;

@end
