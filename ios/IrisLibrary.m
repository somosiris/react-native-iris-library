#import "IrisLibrary.h"
#import "IrisLibrary-Swift.h"
//#import "IrisInits.swift"


@implementation IrisLibrary

RCT_EXPORT_MODULE(RCTIris)

RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
    // TODO: Implement some actually useful functionality
    callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
}


RCT_EXPORT_METHOD(initNotifications:(NSDictionary * _Nullable)launchOptions)
{
  [RCTIris initNotifications:launchOptions];
  
}
RCT_EXPORT_METHOD(initGeolocation:(NSDictionary *)launchOptions)
{
  [RCTIris geolocationService:launchOptions];
}

@end