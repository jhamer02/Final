//
//  ViewController.h
//  Final
//
//  Created by Jorge Jhamil Pineda Echeverria on 30/08/16.
//  Copyright © 2016 jjpe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Parser.h"


@interface Start : UIViewController
@property (nonatomic,strong)    Declarations            *Declarations;
@property (nonatomic,strong)    Parser                  *Parser;


//Objects
@property (strong, nonatomic) IBOutlet UILabel *lblTemp;
@property (strong, nonatomic) IBOutlet UILabel *lblTempMax;
@property (strong, nonatomic) IBOutlet UILabel *lblTempMin;
@property (strong, nonatomic) IBOutlet UILabel *lblHumidity;
@property (strong, nonatomic) IBOutlet UILabel *lblPressure;

//Actions
- (IBAction)btnGetDataPressed:(id)sender;


@end

