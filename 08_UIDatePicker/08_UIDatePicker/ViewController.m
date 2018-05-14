//
//  ViewController.m
//  08_UIDatePicker
//
//  Created by 陈希 on 2018/5/14.
//  Copyright © 2018年 陈希. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datepicker;
- (IBAction)button_start:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn_start;

@end

@implementation ViewController

NSTimer* timer;
NSTimeInterval lefttime;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button_start:(id)sender {
    lefttime = self.datepicker.countDownDuration;
    self.datepicker.userInteractionEnabled = NO;
    [sender setEnabled:NO];
    
//    UIImage* image = [UIImage imageNamed:@"img_03"];
//    self.img.image = image;
    
    NSString* message = [NSString stringWithFormat:@"您还剩下【%f】秒", lefttime];
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"开始倒计时" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* alertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:alertAction];
    [self presentViewController:alertController animated:YES completion:nil];
    timer = [NSTimer scheduledTimerWithTimeInterval:60 target:self selector:@selector(tickDown) userInfo:nil repeats:YES];
}

- (void)tickDown{
    lefttime -= 60;
    self.datepicker.countDownDuration = lefttime;
    if (lefttime <= 0) {
        [timer invalidate];
        self.datepicker.userInteractionEnabled = YES;
        self.btn_start.enabled = YES;
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"时间到" message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* alertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:alertAction];
        [self presentViewController:alertController animated:YES completion:nil];
        
    }
    
    
}
@end
