//
//  ViewController.m
//  SampleProj
//
//  Created by Francesco Di Lorenzo on 15/03/13.
//  Copyright (c) 2013 Francesco Di Lorenzo. All rights reserved.
//

#import "ViewController.h"
//#import "FDGraphView.h"
#import "FDGraphScrollView.h"

@interface ViewController ()<FDCaptionGraphViewDelegate>
@property (nonatomic,strong) NSArray * arr;
@property (nonatomic,strong) NSArray * arr1;
@property (nonatomic,strong) NSArray * arr2;
@property (nonatomic,strong) NSArray * arr3;
@property (nonatomic,strong) NSArray * arr4;
@property (nonatomic,strong) NSArray * arr5;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //FDGraphView
    /*FDGraphView *graphView = [[FDGraphView alloc] initWithFrame:CGRectMake(10, 130, 300, 200)];
    
    graphView.dataPoints = @[@1, @2, @5, @12, @30, @100];
    
    [self.view addSubview:graphView];*/
    
    
    _arr = @[@1, @2,@1, @2,@11, @22,@13, @12,@14, @21,@15, @32,@11, @2,@1, @2,@1, @2,@1, @2,@1, @2,@2,@2,@3,@11, @22,@13];
    _arr1 = @[@12,@14, @21,@15, @32,@11, @2,@1, @2,@1, @2,@11, @22,@13, @12,@14, @21,@15, @32,@11, @2,@1, @2,@1, @2,@1, @2,@1, @2,@2,@2,@3,@11, @22,@13,@1, @2,@11, @22,@13, @12,@14, @21];
    
    _arr2 = @[@2];
    _arr3 = @[@2,@2,@3,@11, @22,@13];
    
    _arr4 = @[@3,@11, @22,@13,@3,@11, @22,@13,@11, @22];
    
    _arr5 = @[@3,@11, @22,@13,@3,@11, @22,@13,@11, @22,@13,@22,@13,@11, @22,@13,@22,@13,@11, @22];
    
    
    //FDGraphScrollView
    FDGraphScrollView *scrollView = [[FDGraphScrollView alloc] initWithFrame:CGRectMake(0, 130, 320, 200)];
     scrollView.fDGraphViewDelegate = self;
    NSLog(@"%d",(int)_arr3.count);
    // 必须现设 numberOfDataPointsInEveryPage 在设 dataPoints
    scrollView.numberOfDataPointsInEveryPage = 10;
    scrollView.dataPoints = _arr;
    scrollView.dataPointColorAfterTaped = [UIColor yellowColor];
    [self.view addSubview:scrollView];
}

-(void)tapedCloserIndex:(int)index {
    self.label.text = [NSString stringWithFormat:@"%2f", ((NSNumber*)_arr[index]).floatValue];
    NSLog(@"%@",[NSString stringWithFormat:@"%2f", ((NSNumber*)_arr[index]).floatValue]);
}
@end
