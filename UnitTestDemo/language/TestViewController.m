//
//  ViewController.m
//  UnitTestDemo
//
//  Created by hello on 2019/10/28.
//  Copyright © 2019 Dio. All rights reserved.
//

#import "TestViewController.h"
#import "TargetViewController.h"

@interface TestViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation TestViewController

-(int)getNum{
    return 100;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)registerAction:(UIButton *)sender {
    
}

- (IBAction)loginAction:(UIButton *)sender {
    if ([self.nameTF.text isEqualToString:@"Dio"] && [self.passwordTF.text isEqualToString:@"123456"]) {
        TargetViewController *homeVC = [[TargetViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
        [self.navigationController pushViewController:homeVC animated:YES];
    }else{
        NSLog(@"账号或密码不正确");
    }
}

@end
