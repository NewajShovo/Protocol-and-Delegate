//
//  secondViewController.m
//  Delegate and protocol
//
//  Created by Shafiq Shovo on 1/4/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController
@synthesize txtlastname,obj;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated
{
    [txtlastname resignFirstResponder];
    [self.obj setlastname:txtlastname.text]; // method setlastname txtlastname is set
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btndone:(id)sender {
    
    [txtlastname resignFirstResponder];
    [self.obj setlastname:txtlastname.text];
    [self.obj setbgcolor:[UIColor orangeColor]];
    [self.obj settxtcolor:[UIColor blackColor]];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
