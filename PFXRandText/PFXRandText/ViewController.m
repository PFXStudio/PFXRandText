//
//  ViewController.m
//  PFXRandText
//
//  Created by succorer on 2016. 1. 15..
//  Copyright © 2016년 succorer. All rights reserved.
//

#import "ViewController.h"
#import "PFXRandStringManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (int i = 0; i < 10; i++)
    {
        NSString *randString = [[PFXRandStringManager sharedRandStringManager] createString];
        NSLog(@"%@", randString);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
