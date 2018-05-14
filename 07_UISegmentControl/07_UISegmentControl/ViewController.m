//
//  ViewController.m
//  07_UISegmentControl
//
//  Created by 陈希 on 2018/5/14.
//  Copyright © 2018年 陈希. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *img;
- (IBAction)selectChange:(id)sender;

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


- (IBAction)selectChange:(id)sender {
    UIImage* img1 = [UIImage imageNamed:@"flower_01"];
    UIImage* img2 = [UIImage imageNamed:@"flower_02"];
    UIImage* img3 = [UIImage imageNamed:@"flower_03"];
    switch ([sender selectedSegmentIndex]) {
        case 0:
            self.img.image = img1;
            break;
        case 1:
            self.img.image = img2;
            break;
        case 2:
            self.img.image = img3;
            break;
            
        default:
            break;
    }
}
@end
