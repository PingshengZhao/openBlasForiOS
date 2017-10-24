//
//  ViewController.m
//  TestFrameWork
//
//  Created by 赵坪生 on 2017/10/19.
//  Copyright © 2017年 赵坪生. All rights reserved.
//

#import "ViewController.h"
#import <Testwwwww/Testwwwww.h>
#import "cblas.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [HelloWorld helloWorld];
    float array[2] = {1.2,1.3};
    float copy[2] = {0.2,0.3};
    cblas_scopy(2, array, 2, copy, 2);
    int i = openblas_get_num_threads();
    NSLog(@"%d", i);
    for (int j = 0; j < 4; j++) {
        NSLog(@"%s %f", __FUNCTION__, copy[j]);
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
