//
//  Ev3Cell.h
//  EV3PortViewer
//
//  Created by FloodSurge on 7/11/14.
//  Copyright (c) 2014 FloodSurge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Ev3Cell : UITableViewCell

@property (nonatomic,strong) UIImageView *sensorImage;
@property (nonatomic,strong) UILabel *portLabel;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *dataLabel;

@end
