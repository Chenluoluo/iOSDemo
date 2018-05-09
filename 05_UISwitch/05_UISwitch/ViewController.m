//
//  ViewController.m
//  05_UISwitch
//
//  Created by 陈希 on 2018/5/9.
//  Copyright © 2018年 陈希. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *light;
- (IBAction)change:(id)sender;


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


- (IBAction)change:(id)sender {
    if (![sender isOn]) {
        NSString* filename = [NSString stringWithFormat:@"img_01"];
        UIImage* image = [UIImage imageNamed:filename];
        self.light.image = image;
    } else {
        NSString* filename = [NSString stringWithFormat:@"img_02"];
        UIImage* image = [UIImage imageNamed:filename];
        self.light.image = image;
    }
}
@end
