//
//  ViewController.m
//  test
//
//  Created by 贾仕琪 on 2017/1/22.
//  Copyright © 2017年 贾仕琪. All rights reserved.
//

#import "ViewController.h"
#import "LocationController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //第一步从高德地图上获取坐标
    
    //http://lbs.amap.com/console/show/picker
    //第二步转换成Wgs坐标系统<wpt lat="23.134762" lon="113.321602">
    CLLocation *loca = [[CLLocation alloc]initWithLatitude:23.132175 longitude:113.32703];
    CLLocationCoordinate2D c2d = [LocationController gcj02ToWgs84:loca.coordinate];
    NSLog(@"转换后： %f  %f",c2d.latitude,c2d.longitude);
    
    //第三步在.gpx中添加地图转换后的坐标
    
    //运行

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
