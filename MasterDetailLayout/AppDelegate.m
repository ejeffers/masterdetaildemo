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
                    @"name" : @"Clock Tower Challenege",
                    @"description" : @"Take a photograph of the clock tower on worth Avenue. Be Sure to include something that makes this sentence longer for the purposes of testing and showing lots of detail in the text. Bring some, friends, have a clock tower party",
                    @"points" : @"2",
                    @"type" : @"photo",
                },
        @"mission2" :
                @{
                    @"name" : @"Ten Thousand",
                    @"description" : @"This challenege has a plausibly high point value. That is it's only purpose.",
                    @"points" : @"10000",
                    @"type" : @"text",
                },
        @"mission3" :
                @{
                    @"name" : @"Newlinze Bonaza",
                    @"description" : @"This challenge has \n lots \n of \n new lines \n in order to see how \n the detail view \n looks \n when the text is really really really really really really long. ",
                    @"points" : @"2",
                    @"type" : @"gps",
                },
        @"mission4" :
                @{
                    @"name" : @"",
                    @"description" : @"This title intentionally Left Blank",
                    @"points" : @"gsjreghlkushg",
                    @"type" : @"gkrdjsl;ghkjrd",
                },
        @"mission5" :
                @{
                    @"name" : @"Bike Ride",
                    @"description" : @"🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️🚴🏻‍♀️",
                    @"points" : @"2",
                    @"type" : @"text",
                },
        @"mission6" :
                @{
                    @"name" : @"Generate Somewhat Interesting Mock Data",
                    @"description" : @"This is a text task, naturally. But it really is kind of exhausting to think of a lot of meaningless words to write. Actually I'm just gonna wirte about bikes since I have a captive audtience",
                    @"points" : @"2",
                    @"type" : @"text",
                },
        @"mission7" :
                @{
                    @"name" : @"Bleed and Flush Gravel Bike Braks",
                    @"description" : @"So the coronvirus thing has actually overloaded bike shops, which is great cause hey more people doing stuff outside.",
                    @"points" : @"11",
                    @"type" : @"gps",
                },
        @"mission8" :
                @{
                    @"name" : @"Brake Bleed pt. ❷",
                    @"description" : @"But that means I have to wait like 10 days to get a bike serviced. So I order a brake bleed kit so I can flush my own brakes on the gravel bike. It's apprently a horrible tedious process and very tme consuming (hence the wait) but with the tools and youtube I should be able to do it",
                    @"points" : @"19",
                    @"type" : @"text",
                },
        @"mission9" :
                @{
                    @"name" : @"Watch SRAM brake flush videos",
                    @"description" : @"You know when the video starts off with and ad for something called a \"Third Hand\" that this isn't going to be a fun process",
                    @"points" : @"31",
                    @"type" : @"photo",
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
