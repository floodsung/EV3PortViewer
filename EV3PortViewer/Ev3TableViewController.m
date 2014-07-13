//
//  Ev3TableViewController.m
//  EV3PortViewer
//
//  Created by FloodSurge on 7/11/14.
//  Copyright (c) 2014 FloodSurge. All rights reserved.
//

#import "Ev3TableViewController.h"
#import "EV3WifiBrowserViewController.h"
#import "EV3WifiManager.h"
#import "Ev3Cell.h"

@interface Ev3TableViewController ()
@property (nonatomic,strong) EV3WifiManager *ev3WifiManager;
@property (nonatomic,strong) EV3Device *device;
@end

@implementation Ev3TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.ev3WifiManager = [EV3WifiManager sharedInstance];
    
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(refreshData) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)connectOrDisconnect:(id)sender
{
    EV3WifiBrowserViewController *browserViewController = [[EV3WifiBrowserViewController alloc] init];
    
    [self presentViewController:browserViewController animated:YES completion:nil];
}

- (IBAction)help:(id)sender
{
    
}



#pragma mark - Table view data source

- (void)refreshData
{
    self.device = self.ev3WifiManager.devices.allValues.lastObject;
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.device) {
        return 8;
    } else return 1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Ev3Cell *cell = [[Ev3Cell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.userInteractionEnabled = NO;
    
    if (self.device) {
        
        switch (indexPath.row) {
            case 0:
                cell.portLabel.text = @"PORTA";
                cell.nameLabel.text = self.device.sensorPortA.typeString;
                cell.imageView.image = self.device.sensorPortA.image;
                cell.dataLabel.text = [NSString stringWithFormat:@"Raw Data:%d",self.device.sensorPortA.data];
                break;
            case 1:
                cell.portLabel.text = @"PORTB";
                cell.nameLabel.text = self.device.sensorPortB.typeString;
                cell.imageView.image = self.device.sensorPortB.image;
                cell.dataLabel.text = [NSString stringWithFormat:@"Raw Data:%d",self.device.sensorPortB.data];
                break;
            case 2:
                cell.portLabel.text = @"PORTC";
                cell.nameLabel.text = self.device.sensorPortC.typeString;
                cell.imageView.image = self.device.sensorPortC.image;
                cell.dataLabel.text = [NSString stringWithFormat:@"Raw Data:%d",self.device.sensorPortC.data];
                break;
            case 3:
                cell.portLabel.text = @"PORTD";
                cell.nameLabel.text = self.device.sensorPortD.typeString;
                cell.imageView.image = self.device.sensorPortD.image;
                cell.dataLabel.text = [NSString stringWithFormat:@"Raw Data:%d",self.device.sensorPortD.data];
                break;
            case 4:
                cell.portLabel.text = @"PORT1";
                cell.nameLabel.text = self.device.sensorPort1.typeString;
                cell.imageView.image = self.device.sensorPort1.image;
                cell.dataLabel.text = [NSString stringWithFormat:@"Raw Data:%d",self.device.sensorPort1.data];
                break;
            case 5:
                cell.portLabel.text = @"PORT2";
                cell.nameLabel.text = self.device.sensorPort2.typeString;
                cell.imageView.image = self.device.sensorPort2.image;
                cell.dataLabel.text = [NSString stringWithFormat:@"Raw Data:%d",self.device.sensorPort2.data];
                break;
            case 6:
                cell.portLabel.text = @"PORT3";
                cell.nameLabel.text = self.device.sensorPort3.typeString;
                cell.imageView.image = self.device.sensorPort3.image;
                cell.dataLabel.text = [NSString stringWithFormat:@"Raw Data:%d",self.device.sensorPort3.data];
                break;
            case 7:
                cell.portLabel.text = @"PORT4";
                cell.nameLabel.text = self.device.sensorPort4.typeString;
                cell.imageView.image = self.device.sensorPort4.image;
                cell.dataLabel.text = [NSString stringWithFormat:@"Raw Data:%d",self.device.sensorPort4.data];
                break;
                
            default:
                break;
        }

    } else {
        cell.textLabel.text = @"Waiting For Connection Of EV3!";
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    
    return cell;
}

@end
