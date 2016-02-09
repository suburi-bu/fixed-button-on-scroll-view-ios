//
//  ViewController.m
//  fixed-button-on-scroll-view
//
//  Created by yatemmma on 2016/02/09.
//  Copyright © 2016年 yatemmma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self tableView] setDelegate:self];
}

- (void)viewWillAppear:(BOOL)animated {
    
    UIImage *image = [UIImage imageNamed:@"apple"];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    
    CGFloat marginRight = 20;
    CGFloat marginBottom = 20;
    CGFloat width = image.size.width;
    CGFloat height = image.size.height;
    CGFloat x = self.view.bounds.size.width - width - marginRight;
    CGFloat y = self.view.bounds.size.height - height - marginBottom;
    [button setFrame:CGRectMake(x, y, width, height)];
    
    [self.view addSubview:button];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    return cell;
}

@end
