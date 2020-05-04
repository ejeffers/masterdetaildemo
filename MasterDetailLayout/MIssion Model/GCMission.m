//
//  Mission.m
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import "GCMission.h"


NSString *const MissionJSONPhoto = @"photo";
NSString *const MissionJSONText = @"text";
NSString *const MissionJSONGPS = @"gps";


NSString *const MissionJSONName = @"name";
NSString *const MissionJSONDesc = @"description";
NSString *const MissionJSONPoints = @"points";
NSString *const MissionJSONType = @"type";




@implementation GCMission

#pragma mark - initializers

+ (instancetype)missionWithId:(NSString *)missionId dataDictionary:(NSDictionary *)missionDictionary;
{
    return [[self alloc] initWithMissionId:missionId dataDictionary:missionDictionary];
}



- (instancetype)initWithMissionId:(NSString *)missionId dataDictionary:(NSDictionary *)missionDictionary
{
    if (self) {
        self.missionId = missionId;
        self.missionName = missionDictionary[MissionJSONName];
        self.missionDescription = missionDictionary[MissionJSONDesc];
        self.missionPoints = @([missionDictionary[MissionJSONPoints] integerValue]);
        
        NSString *missionTypeString = missionDictionary[MissionJSONType];
        self.missionType = [GCMission.class missionTypeFromString:missionTypeString];
        
    }
    return self;
}





#pragma mark - helpers

-(NSString *)missionDisplayHexColorString
{
    switch (self.missionType) {
        case GCMissionTypeText:
            return @"#0000FF";
        case GCMissionTypePhoto:
            return @"#FF4500";
        case GCMissionTypeGPS:
            return @"#6A0DAD";
        default:
            return @"#000000";
    }
}


- (NSString *)missionDiplayPointsString
{
    return [NSString stringWithFormat:@"%@ pts", self.missionPoints];
}


+ (GCMissionType)missionTypeFromString:(NSString *)missionTypeString
{
    GCMissionType missionType = GCMissionTypeUnknown;
    if ([missionTypeString isEqualToString:MissionJSONPhoto]) {
        missionType = GCMissionTypePhoto;
    }
    else if ([missionTypeString isEqualToString:MissionJSONText]) {
        missionType = GCMissionTypeText;
    } else if ([missionTypeString isEqualToString:MissionJSONGPS]) {
        missionType = GCMissionTypeGPS;
    }
    return missionType;
}


@end
