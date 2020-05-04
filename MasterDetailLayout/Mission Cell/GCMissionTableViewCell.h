//
//  GCMissionTableViewCell.h
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GCMission.h"

NS_ASSUME_NONNULL_BEGIN

@interface GCMissionTableViewCell : UITableViewCell

@property UIImageView *typeImageView;
@property UILabel *nameLabel;
@property UILabel *descLabel;
@property UILabel *pointsLabel;


- (void)updateWithMission:(GCMission *) mission;

@end

NS_ASSUME_NONNULL_END
