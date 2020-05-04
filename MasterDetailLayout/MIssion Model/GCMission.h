//
//  Mission.h
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, GCMissionType) {
    GCMissionTypeUnknown = -1,
    GCMissionTypePhoto, // Orange
    GCMissionTypeText,  // Blue
    GCMissionTypeGPS,   // Purple
};

@interface GCMission : NSObject

+ (instancetype)missionWithId:(NSString *)missionId dataDictionary:(NSDictionary *)missionDictionary;

@property (nonatomic, strong) NSString      *missionId;

@property (nonatomic, strong) NSString      *missionName;
@property (nonatomic, strong) NSString      *missionDescription;
@property (nonatomic, strong) NSNumber      *missionPoints;
@property (nonatomic)         GCMissionType missionType;

// UI Specific
@property (readonly)          NSString      *missionDisplayHexColorString;
@property (readonly)          NSString      *missionDiplayPointsString;

@end

NS_ASSUME_NONNULL_END
