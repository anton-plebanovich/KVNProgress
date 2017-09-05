//
//  KVNRotationViewController.m
//  KVNProgress
//
//  Created by Kevin Hirsch on 18/08/16.
//  Copyright © 2016 Pinch. All rights reserved.
//

#import "KVNRotationViewController.h"

/**
 This class is only used to handle rotation automatically with a custom UIWindow
 http://stackoverflow.com/a/27091111/2571566
 */
@implementation KVNRotationViewController

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
	return UIInterfaceOrientationMaskAll;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
	UIViewController *currentVc = UIApplication.sharedApplication.delegate.window.rootViewController;
	UIViewController *newTopVc = currentVc;
	while (newTopVc) {
		currentVc = newTopVc;
		newTopVc = currentVc.childViewControllerForStatusBarStyle;
	}
	
	return currentVc.preferredStatusBarStyle;
}

- (BOOL)shouldAutorotate
{
	return YES;
}

@end
