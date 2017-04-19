//
//  ViewController.m
//  ChangeTitle
//
//  Created by Kobilly on 4/19/17.
//  Copyright © 2017 sdey81. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, strong) UITextField *txtTitle;
@property (nonatomic, strong) UIButton    *btnUpdateTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *txtTitle = [[UITextField alloc]
                             initWithFrame:CGRectMake(20, 100, 280, 30)];
    txtTitle.delegate = self;
    txtTitle.placeholder = @"Enter title";
    [self.view addSubview:txtTitle];
    self.txtTitle = txtTitle;
    
    UIButton *btnUpdateTitle = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btnUpdateTitle setFrame:CGRectMake(20, 160, 280, 40)];
    [btnUpdateTitle setTitle:@"Update Title"
                    forState:(UIControlStateNormal)];
    [btnUpdateTitle setBackgroundColor:[UIColor darkGrayColor]];
    [btnUpdateTitle addTarget:self
                       action:@selector(onPressUpdateTitle:)
             forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btnUpdateTitle];
    self.btnUpdateTitle = btnUpdateTitle;
    
    [self.navigationItem setTitle:@"Title"];
    
}

- (void) onPressUpdateTitle:(id) sender {
    [self.navigationItem setTitle:self.txtTitle.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end