//
//  ViewController.m
//  POSTtest
//
//  Created by admin on 16/4/11.
//  Copyright © 2016年 JCK. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)test
{
    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{
                                    @"_appid":@"101",
                                    @"_code":@"bf1ced86a7ab4efbbb0f310f99f0097a",
//                                    @"content":@"application/json",
//                                     @"UserName": @"sample string 1",
//                                     @"Password": @"sample string 2",
                                 };
    //@"http://192.168.1.4:88/common/user/login"
    NSString *url = @"http://192.168.1.4:88/common/advertise/getlist";
    [manger POST:url parameters:parameters success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        id data = responseObject[@"Data"];
        

        
    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
        NSLog(@"error : %@",error);
    }];
    
}
@end
