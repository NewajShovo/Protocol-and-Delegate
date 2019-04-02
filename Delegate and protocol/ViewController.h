//
//  ViewController.h
//  Delegate and protocol
//
//  Created by Shafiq Shovo on 31/3/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondViewController.h"

@interface ViewController : UIViewController <ABC>

@property (strong, nonatomic) IBOutlet UITextField *txtfirstname;
@property (strong, nonatomic) IBOutlet UITextField *txtfullname;
typedef void (^ Completion) (BOOL);

@end
@interface ViewController ()
{
    
}

@end
