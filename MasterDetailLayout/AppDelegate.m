//
//  AppDelegate.m
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

#import "AppDelegate.h"

#import "GCMission.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    // Create Fake Data here
    NSDictionary *mockMissionsDict = @{
        @"mission1" :
                @{
                    @"name" : @"ERIC CHALLENGE NAME",
                    @"description" : @"test Description test test test test HELLOE MY THIS IS A LONG STRING OF TEXT TEX TEXT TKEJLVKSEJFLKESLFKES FESILFSEKFJEKLSJ",
                    @"points" : @"2",
                    @"type" : @"photo",
                },
        @"mission2" :
                @{
                    @"name" : @"2 2 2 ERIC CHALLENGE NAME",
                    @"description" : @"descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptionn descriptiondescriptiondescription \n descriptiondescriptiondescriptiondescription\n   description description description test tes this is more of me writing a desc that is a test",
                    @"points" : @"2",
                    @"type" : @"text",
                },
        @"mission3" :
                @{
                    @"name" : @"ERIC CHALLENGE NAME",
                    @"description" : @"test Description test test test test HELLOE MY THIS IS A LONG STRING OF TEXT TEX TEXT TKEJLVKSEJFLKESLFKES FESILFSEKFJEKLSJ",
                    @"points" : @"2",
                    @"type" : @"gps",
                },
        @"mission4" :
                @{
                    @"name" : @"ERIC CHALLENGE NAME",
                    @"description" : @"test Description test test test test HELLOE MY THIS IS A LONG STRING OF TEXT TEX TEXT TKEJLVKSEJFLKESLFKES FESILFSEKFJEKLSJ",
                    @"points" : @"2",
                    @"type" : @"photo",
                },
        @"mission5" :
                @{
                    @"name" : @"ERIC CHALLENGE NAME",
                    @"description" : @"test Description test test test test HELLOE MY THIS IS A LONG STRING OF TEXT TEX TEXT TKEJLVKSEJFLKESLFKES FESILFSEKFJEKLSJ",
                    @"points" : @"2",
                    @"type" : @"text",
                },
        @"mission6" :
                @{
                    @"name" : @"6 ERIC CHALLENGE NAME",
                    @"description" : @"test Description test test test test HELLOE MY THIS IS A LONG STRING OF TEXT TEX TEXT TKEJLVKSEJFLKESLFKES FESILFSEKFJEKLSJ",
                    @"points" : @"2",
                    @"type" : @"text",
                },
        @"mission7" :
                @{
                    @"name" : @"7 ERIC CHALLENGE NAME",
                    @"description" : @"test Description test test test test HELLOE MY THIS IS A LONG STRING OF TEXT TEX TEXT TKEJLVKSEJFLKESLFKES FESILFSEKFJEKLSJ",
                    @"points" : @"2",
                    @"type" : @"gps",
                },
        @"mission8" :
                @{
                    @"name" : @"8 ERIC CHALLENGE NAME",
                    @"description" : @"test Description test test test test HELLOE MY THIS IS A LONG STRING OF TEXT TEX TEXT TKEJLVKSEJFLKESLFKES FESILFSEKFJEKLSJ",
                    @"points" : @"2",
                    @"type" : @"text",
                },
        @"mission9" :
                @{
                    @"name" : @"9 ERIC CHALLENGE NAME",
                    @"description" : @"test Description test test test test HELLOE MY THIS IS A LONG STRING OF TEXT TEX TEXT TKEJLVKSEJFLKESLFKES FESILFSEKFJEKLSJ",
                    @"points" : @"2",
                    @"type" : @"gps",
                },
    };
    
    
    NSMutableArray *missions = [NSMutableArray new];
    [mockMissionsDict enumerateKeysAndObjectsUsingBlock:^(NSString *missionId, NSDictionary *missionDict, BOOL * _Nonnull stop) {
        GCMission *mission = [GCMission missionWithId:missionId dataDictionary:missionDict];
        [missions addObject:mission];
    }];
    self.missionsArray = [missions copy];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
