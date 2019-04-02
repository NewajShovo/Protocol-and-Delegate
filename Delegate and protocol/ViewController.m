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
    //[txtfirstname becomeFirstResponder];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) viewWillAppear:(BOOL)animated
{
    NSLog(@"Helllo");
    [txtfirstname resignFirstResponder];
    
}
-(void) function:(BOOL) val
{
    NSLog(@"H#DSfkajsdf");
}
-(void) setlastname:(NSString *)lastname
{
    NSLog(@"name");
    NSString *mainstr = [ NSString stringWithFormat:@"%@ %@",txtfirstname.text,lastname];
    txtfullname.text=mainstr;
    NSLog(@"%@",mainstr);
}
-(void) settxtcolor:(UIColor *)txtcolor
{
    NSLog(@"txtcolor");
    txtfullname.textColor= txtcolor;
}
-(void) setbgcolor:(UIColor *)bgcolor

{
    NSLog(@"bgcolor");
    txtfullname.backgroundColor =bgcolor;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"A2B"]){
        secondViewController *sec = [segue destinationViewController];
        sec.obj =self;
        [sec setTest:^(BOOL test) {
            if (test) {
//                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(@"fsfsaf");
//                });
            }
        }];
        
        NSLog(@"%@",sec.obj);
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //hides keyboard when another part of layout was touched
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self.txtfirstname resignFirstResponder];
    [self.txtfullname resignFirstResponder];
    
    return NO;
    
}
//-(void) itreateWidgets:(void (^)(BOOL)) iteratorBlock
//{
//
//
//
//    BOOL val=arc4random()%2;
//    iteratorBlock(val);
//}


@end
