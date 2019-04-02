//
//  secondViewController.h
//  Delegate and protocol
//
//  Created by Shafiq Shovo on 1/4/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol ABC <NSObject>

- (void) setlastname: (NSString *) lastname;
- (void) setbgcolor: (UIColor *) bgcolor;
- (void) settxtcolor: (UIColor *) txtcolor;
- (void) function: (BOOL) val;
@optional
- (void) itreateWidgets:(void (^)(BOOL block))blockName;

@end

@interface secondViewController : UIViewController
@property (retain,nonatomic) id <ABC> obj;
@property (strong, nonatomic) IBOutlet UITextField *txtlastname;
@property (nonatomic,copy) void (^test) (BOOL);
- (IBAction)btndone:(id)sender;

@end

NS_ASSUME_NONNULL_END
