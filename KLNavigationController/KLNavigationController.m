//
//  KLMutableNavigationController.m
//  KLMutableNavigationController
//
//  Created by Kieran Lafferty on 2013-05-13.
//  Copyright (c) 2013 Kieran Lafferty. All rights reserved.
//

#import "KLNavigationController.h"

@interface KLNavigationController ()
@property (nonatomic, strong) UIViewController* fakeRootViewController;
@end

@implementation KLNavigationController
- (id) initWithCoder:(NSCoder *)aDecoder {
    UINavigationController* navCont = [[UINavigationController alloc] initWithCoder:aDecoder];
    UIViewController* initialViewController = [[navCont viewControllers] objectAtIndex:0];
    if (self = [self initWithRootViewController: initialViewController])  {
        
    }
    return self;
}
- (id) initWithRootViewController:(UIViewController *)rootViewController {
    self.fakeRootViewController = [[UIViewController alloc] init];
    if (self = [super initWithRootViewController: self.fakeRootViewController]) {
        [self setRootViewController:rootViewController];
    }
    return self;
}
- (NSArray*) popToRootViewControllerAnimated:(BOOL)animated {
    return [self popToViewController: self.rootViewController
                            animated: animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    //Only pop if there are more than the fake root on the nav stack
    if (self.viewControllers.count > 0)
        return [super popViewControllerAnimated:animated];
    else return nil;
}
//Remove the fake view controller from the view controllers array
-(NSArray*) viewControllers {
    NSMutableArray* mutableViewControllers = [[NSMutableArray alloc] initWithArray:[super viewControllers]];
    [mutableViewControllers removeObject: self.fakeRootViewController];
    return  mutableViewControllers;
}

//Additional Functions provided by subclass
-(void) setRootViewController: (UIViewController*) rootViewController {
    _rootViewController = rootViewController;
    rootViewController.navigationItem.hidesBackButton = YES;
    [self popToViewController: self.fakeRootViewController
                     animated: NO];
    [self pushViewController:rootViewController animated:NO];
}@end
