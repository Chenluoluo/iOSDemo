//
//  ViewController.m
//  03_UIButton
//
//  Created by 陈希 on 2018/5/7.
//  Copyright © 2018年 陈希. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ung;
- (IBAction)run:(id)sender;
//- (IBAction)scale:(id)sender;
//- (IBAction)rotate:(id)sender;
- (IBAction)rotate:(id)sender;
- (IBAction)scale:(id)sender;


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


- (IBAction)run:(id)sender {
    CGRect tempframe= self.ung.frame;
    NSInteger tag = [sender tag];
    switch (tag) {
        case 1:
            tempframe.origin.y -= 10;
            self.ung.frame = tempframe;
            break;
        case 2:
            tempframe.origin.y += 10;
            self.ung.frame = tempframe;
            break;
        case 3:
            tempframe.origin.x -= 10;
            self.ung.frame = tempframe;
            break;
        case 4:
            tempframe.origin.x += 10;
            self.ung.frame = tempframe;
            break;
        default:
            break;
    }
}

- (IBAction)scale:(id)sender {
    CGAffineTransform t = self.ung.transform;
    NSInteger tag = [sender tag];
    if (tag == 7) {
        CGAffineTransform temtransform = CGAffineTransformScale(t, 1.2, 1.2);
        self.ung.transform = temtransform;
    }
    if (tag == 8){
        CGAffineTransform temtransform = CGAffineTransformScale(t, 0.8, 0.8);
        self.ung.transform = temtransform;
    }
}

- (IBAction)rotate:(id)sender {
    CGAffineTransform t = self.ung.transform;
    NSInteger tag = [sender tag];
    if (tag == 5) {
        self.ung.transform = CGAffineTransformRotate(t, M_PI_4 * -1);
    }
    if (tag == 6) {
        self.ung.transform = CGAffineTransformRotate(t, M_PI_4 * 1);
    }
}

@end
