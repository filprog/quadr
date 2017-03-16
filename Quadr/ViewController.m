//
//  ViewController.m
//  Quadr
//
//  Created by Michal Mesyjasz on 15.03.2017.
//  Copyright © 2017 Michal Mesyjasz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize btStartGame6, btStartGame7, btStartGame8, btStartGame9, btStartGame10;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    _w = screenBound.size.width;
    _h = screenBound.size.height;
    
    [self LocateStartGameButtons];
}

- (
   void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)LocateStartGameButtons
{
    float distance = 0.2 * [[UIScreen mainScreen] bounds].size.width;
    float lineWidth = 0.02 * [[UIScreen mainScreen] bounds].size.width;
    float buttonSide = distance - lineWidth;
    distance += 0.25 * lineWidth;
    
    [self.btStartGame6 setFrame:CGRectMake(0, 0, buttonSide, buttonSide)];
    [self.btStartGame7 setFrame:CGRectMake(distance, 0, buttonSide, buttonSide)];
    [self.btStartGame8 setFrame:CGRectMake(2*distance, 0, buttonSide, buttonSide)];
    [self.btStartGame9 setFrame:CGRectMake(3*distance, 0, buttonSide, buttonSide)];
    [self.btStartGame10 setFrame:CGRectMake(4*distance, 0, buttonSide, buttonSide)];
}

@end
