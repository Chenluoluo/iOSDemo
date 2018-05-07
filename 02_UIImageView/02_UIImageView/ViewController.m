//
//  ViewController.m
//  02_UIImageView
//
//  Created by 陈希 on 2018/5/2.
//  Copyright © 2018年 uit2015. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tom;
- (IBAction)drink:(id)sender;

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



- (IBAction)drink:(id)sender {
    NSMutableArray *images = [NSMutableArray array];
    for (int i = 0; i < 81; i++) {
        NSString* filename = [NSString stringWithFormat:@"drink_%02d",i];
        UIImage* image = [UIImage imageNamed:filename];
        [images addObject:image];
    }
    self.tom.animationImages = images;
    
    self.tom.animationRepeatCount = 1;
    self.tom.animationDuration = 8;
    [self.tom startAnimating];
}

@end
