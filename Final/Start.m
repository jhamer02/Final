//
//  ViewController.m
//  Final
//
//  Created by Jorge Jhamil Pineda Echeverria on 30/08/16.
//  Copyright © 2016 jjpe. All rights reserved.
//

#import "Start.h"

//OCMapper
#define nUagLat 20.695306
#define nUagLng -103.418190


@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //OCMapper
    [self initData];

}

- (void)initData {
    mjsonWeatherObject              = [Declarations getWeather:nUagLat and:nUagLng];
    mWeatherObject                  = [Parser parseWeatherObject];
    Weather *weather                = [Parser parseWeather];
    
    WeatherDetail *weatherDetail    = [weather getWeatherDetail:0];
    print(NSLog(@"icon %@", weatherDetail.icon))
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGetDataPressed:(id)sender {
    mjsonWeatherObject    = [Declarations getWeather:nUagLat and:nUagLng];
    mWeatherObject  = [Parser parseWeatherObject];
    
    float tempKelvin        = mWeatherObject.main.temp;
    float tempCelsius       = tempKelvin - 273.15;
    self.lblTemp.text       = [NSString stringWithFormat:@"%.2f", tempCelsius];
    self.lblTempMax.text    = [NSString stringWithFormat:@"%.2f", mWeatherObject.main.temp_max - 273.15];
    self.lblTempMin.text    = [NSString stringWithFormat:@"%.2f", mWeatherObject.main.temp_min - 273.15];
    self.lblPressure.text   = [NSString stringWithFormat:@"%d", mWeatherObject.main.pressure];
    self.lblHumidity.text   = [NSString stringWithFormat:@"%d", mWeatherObject.main.humidity];
}
@end
