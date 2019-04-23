//
//  ViewController.m
//  KLProjectOC_Gather
//
//  Created by likuan on 2018/10/10.
//  Copyright © 2018年 com.jinher.likuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tvb;

@property(nonatomic,strong) NSArray *listArray;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"OC project";
    self.tvb.tableFooterView = [UIView new];
    self.listArray = @[@"测试001",@"",@"",@"",@"",@"",@"",@"",@"",@"111"];
    
    if ([@"../workFlow/myWaitApproval.html?title=待办流程&amp;newpage=1&amp;newWebView=1&amp;hideShare=1" containsString:@"workFlow/myWaitApproval.html"]) {
        NSLog(@"6666");
    }
    
    NSRange range = [@"../workFlow/myWaitApproval.html?title=待办流程&amp;newpage=1&amp;newWebView=1&amp;hideShare=1" rangeOfString:@"workFlow/mywaitapproval.html" options:NSCaseInsensitiveSearch];
    if (range.location != NSNotFound) {
        NSLog(@"111");
    }
    
    
    NSString *str = @"每天都有好心情";
    if ([str containsString:@"心"]) {
        NSLog(@"字符串包含“心”");
        //containString适用于ios8系统，在ios7系统下会崩溃
    }
    NSRange range1 = [str rangeOfString:@"心"];
    if (range1.location != NSNotFound) {//有@“心”
        //ios7系统下也适用
        NSLog(@"字符串包含“心”");
    }
    
}

#pragma tableView--delegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.listArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identify =@"cellIdentify";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if(!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    
    cell.textLabel.text = self.listArray[indexPath.row];
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}





@end
