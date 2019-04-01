//
//  ViewController.m
//  Delegate and protocol
//
//  Created by Shafiq Shovo on 31/3/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize  txtfullname,txtfirstname;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) viewWillAppear:(BOOL)animated
{
    [txtfirstname resignFirstResponder];
    
}
-(void) setlastname:(NSString *)lastname
{
    NSString *mainstr = [ NSString stringWithFormat:@"%@ %@",txtfirstname.text,lastname];
    txtfullname.text=mainstr;
}
-(void) settxtcolor:(UIColor *)txtcolor
{
    txtfullname.textColor= txtcolor;
}
-(void) setbgcolor:(UIColor *)bgcolor
{
    txtfullname.backgroundColor =bgcolor;
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    secondViewController *sec = [segue destinationViewController];
    sec.obj =self;
}
@end
