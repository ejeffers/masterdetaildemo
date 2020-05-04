//
//  GCMissionTableViewCell.m
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import "GCMissionTableViewCell.h"

#import "GCMission+UIKit.h"

@implementation GCMissionTableViewCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.nameLabel = [UILabel new];
        self.descLabel = [UILabel new];
        self.pointsLabel = [UILabel new];
        self.typeImageView = [UIImageView new];
    
        [self.textLabel removeFromSuperview];
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.descLabel];
        [self.contentView addSubview:self.pointsLabel];
        [self.contentView addSubview:self.typeImageView];
        
        UILayoutGuide *guide = [self.contentView layoutMarginsGuide];
        
        UILayoutGuide *textGuide = [UILayoutGuide new];
        [self.contentView addLayoutGuide:textGuide];
        
        self.typeImageView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.typeImageView.widthAnchor constraintEqualToAnchor:self.typeImageView.heightAnchor].active = YES;
        [self.typeImageView.leadingAnchor constraintEqualToAnchor:guide.leadingAnchor].active = YES;
        [self.typeImageView.topAnchor constraintEqualToAnchor:guide.topAnchor].active = YES;
        [self.typeImageView.trailingAnchor constraintEqualToAnchor:textGuide.leadingAnchor].active = YES;
        [self.typeImageView.bottomAnchor constraintLessThanOrEqualToAnchor:guide.bottomAnchor].active = YES;
        [self.typeImageView.heightAnchor constraintEqualToAnchor:guide.widthAnchor multiplier:0.25].active = YES;
        
        [textGuide.leadingAnchor constraintEqualToAnchor:self.typeImageView.trailingAnchor].active = YES;
        [textGuide.topAnchor constraintEqualToAnchor:guide.topAnchor].active = YES;
        [textGuide.trailingAnchor constraintEqualToAnchor:guide.trailingAnchor].active = YES;
        [textGuide.bottomAnchor constraintLessThanOrEqualToAnchor:guide.bottomAnchor].active = YES;
        
        self.nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
        self.nameLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        [self.nameLabel.leadingAnchor constraintEqualToAnchor:textGuide.leadingAnchor].active = YES;
        [self.nameLabel.topAnchor constraintEqualToAnchor:textGuide.topAnchor].active = YES;
        [self.nameLabel.trailingAnchor constraintEqualToAnchor:self.pointsLabel.leadingAnchor].active = YES;
        self.nameLabel.numberOfLines = 1;
        
        self.pointsLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [self.pointsLabel.trailingAnchor constraintEqualToAnchor:textGuide.trailingAnchor].active = YES;
        self.pointsLabel.textAlignment = NSTextAlignmentRight;
        [self.pointsLabel.topAnchor constraintEqualToAnchor:textGuide.topAnchor].active = YES;
        
        self.descLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [self.descLabel.leadingAnchor constraintEqualToAnchor:textGuide.leadingAnchor].active = YES;
        [self.descLabel.topAnchor constraintEqualToAnchor:self.nameLabel.bottomAnchor].active = YES;
        [self.descLabel.trailingAnchor constraintEqualToAnchor:textGuide.trailingAnchor].active = YES;
        [self.descLabel.bottomAnchor constraintEqualToAnchor:textGuide.bottomAnchor].active = YES;
        self.descLabel.numberOfLines = 2;
        
    }
    return self;
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.textLabel removeFromSuperview];
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - data updating
- (void)updateWithMission:(GCMission *) mission {
    self.nameLabel.text = mission.missionName;
    self.descLabel.text = mission.missionDescription;
    self.pointsLabel.text = mission.missionDiplayPointsString;
    
    self.typeImageView.image = [GCMission imageFromHexString:mission.missionDisplayHexColorString];
}


@end
