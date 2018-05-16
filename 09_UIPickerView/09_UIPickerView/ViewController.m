//
//  ViewController.m
//  09_UIPickerView
//
//  Created by 陈希 on 2018/5/16.
//  Copyright © 2018年 陈希. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray* foods;

@property (weak, nonatomic) IBOutlet UILabel *a;
@property (weak, nonatomic) IBOutlet UILabel *b;
@property (weak, nonatomic) IBOutlet UILabel *c;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

- (IBAction)random:(id)sender;
- (IBAction)certain:(id)sender;
- (IBAction)cancel:(id)sender;

@end

@implementation ViewController

- (NSArray*) foods{
    if (_foods == nil) {
        _foods = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"foods" ofType:@"plist"]];
    }
    return _foods;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (int i = 0; i < 3; i++) {
        [self pickerView:nil didSelectRow:0 inComponent:i];
    }
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView*)pickerView{
    return self.foods.count;
}

- (NSInteger) pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSArray* subFood = self.foods[component];
    return subFood.count;
}

- (NSString*) pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.foods[component][row];
}

- (void) pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component == 0) {
        self.a.text = self.foods[component][row];
    } else if (component == 1) {
        self.b.text = self.foods[component][row];
    } else if (component == 2) {
        self.c.text = self.foods[component][row];
    }
}

- (CGFloat) pickerView:(UIPickerView*)pickerView rowHeightForComponent:(NSInteger)component{
    return 35;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)random:(id)sender {
    for (int component = 0; component < self.foods.count; component++) {
        int count = (int)[self.foods[component] count];
        int oldRow = (int)[self.pickerView selectedRowInComponent:component];
        int row = oldRow;
        while (row == oldRow) {
            row = arc4random()%count;
        }
        [self.pickerView selectRow:row inComponent:component animated:YES];
        [self pickerView:nil didSelectRow:row inComponent:component];
    }
}

- (IBAction)certain:(id)sender {
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"点餐成功" message:@"请稍候..." preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* alertAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:alertAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
- (IBAction)cancel:(id)sender {
    for (int i = 0; i < 3; i++) {
        [self pickerView:nil didSelectRow:0 inComponent:i];
        [self.pickerView selectRow:0 inComponent:i animated:YES];
    }
}
@end
