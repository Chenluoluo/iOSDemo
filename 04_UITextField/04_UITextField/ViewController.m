//
//  ViewController.m
//  04_UITextField
//
//  Created by 陈希 on 2018/5/9.
//  Copyright © 2018年 陈希. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)login:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)login:(id)sender {
    NSString* username = self.username.text;
    NSString* password = self.password.text;
    
    if ([username isEqualToString:@""] || [password isEqualToString:@""]) {
        [self showMessage:@"用户名或密码不能为空"];
    } else if ([password isEqualToString:@"12345"] && [username isEqualToString:@"chenxi"]){
        [self showMessage:@"登陆成功"];
    } else {
        [self showMessage:@"用户名或密码错误"];
    }
}

- (void)showMessage:(NSString*) message{
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* alertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:alertAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
