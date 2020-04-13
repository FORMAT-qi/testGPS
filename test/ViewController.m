
//
//  ViewController.m
//  test
//
//  Created by 贾仕琪 on 2017/1/22.
//  Copyright © 2017年 贾仕琪. All rights reserved.
//

#import "ViewController.h"
#import "LocationController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()<CLLocationManagerDelegate>
@property (nonatomic, strong)CLLocationManager *locationManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //第一步从高德地图上获取坐标
    
    //http://lbs.amap.com/console/show/picker
    //第二步转换成Wgs坐标系统<wpt lat="23.134762" lon="113.321602">
    CLLocation *loca = [[CLLocation alloc]initWithLatitude:31.215257 longitude:121.53381];
    CLLocationCoordinate2D c2d = [LocationController gcj02ToWgs84:loca.coordinate];
    NSLog(@"转换后： %f  %f",c2d.latitude,c2d.longitude);
    
    //第三步在.gpx中添加地图转换后的坐标
    
    //运行
    
//    _locationManager =[[CLLocationManager alloc]init];
//    _locationManager.delegate =self;
//    //设置定位经准
//    _locationManager.desiredAccuracy =kCLLocationAccuracyNearestTenMeters;
//    [_locationManager requestWhenInUseAuthorization];//否则，ios10不弹定位框
//    _locationManager.distanceFilter =10.0f;
//    //开始定位
//    [_locationManager startUpdatingLocation];
    UILabel * lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 100)];
    lable.numberOfLines = 2;
    lable.text = @"模拟定位已启动，不要断开连接，不要关闭程序，按home键返回桌面";
    lable.center = self.view.center;
    lable.textColor = [UIColor redColor];
    [self.view addSubview:lable];
}
//-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
//
//    CLLocation *newLocation =locations[0];
//
//    CLLocationCoordinate2D oCoordinate =newLocation.coordinate;
//
//    [_locationManager stopUpdatingLocation];
//
//
//
//    NSLog(@"经度------%f\n------纬度%f",oCoordinate.longitude,oCoordinate.latitude);
//
//    //创建地理位置解码编码器对象
//
//    CLGeocoder *geoCoder =[[CLGeocoder alloc]init];
//
//    [geoCoder reverseGeocodeLocation:newLocation completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
//
//        for (CLPlacemark *place in placemarks) {
//
//            NSLog(@"城市-----%@",place.locality);
//
//        }
//
//    }];
//
//}
//
//- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
//
//    if ([error code] == kCLErrorDenied){
//
//        //访问被拒绝
//
//        NSLog(@"访问被拒绝");
//
//    }
//
//    if ([error code] == kCLErrorLocationUnknown) {
//
//        //无法获取位置信息
//
//        NSLog(@"无法获取位置信息");
//
//    }
//
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}


@end
