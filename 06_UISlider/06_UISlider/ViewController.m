//
//  ViewController.m
//  06_UISlider
//
//  Created by 陈希 on 2018/5/14.
//  Copyright © 2018年 陈希. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIImageView *voiceImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.slider addTarget:self action:@selector(valueChange) forControlEvents:UIControlEventValueChanged];
}

- (void)valueChange{
    int count = 4;
    float level = _slider.value;
    if (level >= 0 && level < 1.0/(count-1)) {
        self.voiceImage.image = [UIImage imageNamed:@"voice0"];
    } else if (level >= 1.0/(count-1) && level < 2.0/(count-1)) {
        self.voiceImage.image = [UIImage imageNamed:@"voice1"];
    }  else if (level >= 2.0/(count-1) && level < 3.0/(count-1)) {
        self.voiceImage.image = [UIImage imageNamed:@"voice2"];
    } else if (level >= 3.0/(count-1) && level < 4.0/(count-1)) {
        self.voiceImage.image = [UIImage imageNamed:@"voice3"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
