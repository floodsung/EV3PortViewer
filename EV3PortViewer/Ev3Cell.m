//
//  Ev3Cell.m
//  EV3PortViewer
//
//  Created by FloodSurge on 7/11/14.
//  Copyright (c) 2014 FloodSurge. All rights reserved.
//

#import "Ev3Cell.h"

@implementation Ev3Cell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.frame = CGRectMake(0, 0, 320, 120);
        
        self.sensorImage = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];

        self.portLabel = [[UILabel alloc] initWithFrame:CGRectMake(140, 15, 180, 20)];
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(140, 50, 180, 20)];
        
        self.dataLabel = [[UILabel alloc] initWithFrame:CGRectMake(140, 85, 180, 20)];
        
        
        [self addSubview:self.sensorImage];
        [self addSubview:self.portLabel];
        [self addSubview:self.nameLabel];
        [self addSubview:self.dataLabel];
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
