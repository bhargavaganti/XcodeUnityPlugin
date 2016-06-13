//
//  Unity.m
//  Unity
//
//  Created by larryhou on 6/13/16.
//  Copyright © 2016 larryhou. All rights reserved.
//

#import "iOSUtils.h"

@implementation iOSUtils
+(float)getBatteryLevel
{
    [[UIDevice currentDevice] setBatteryMonitoringEnabled:YES];
    return [[UIDevice currentDevice] batteryLevel] * 100.0f;
}

+(NSString*)getRootController
{
    UIViewController* ctrl = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    NSLog(@"rootViewController:%@", ctrl);
    return ctrl.description;
}

+(void)showNativeAlert
{
    UIViewController* ctrl = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    UIAlertController* alert = [[UIAlertController alloc] init];
    for (int i = 0; i < 5; i++)
    {
        NSString* option = [NSString stringWithFormat:@"NativeOption#%d",i];
        UIAlertAction* action = [UIAlertAction actionWithTitle:option style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
    }
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil]];
    [ctrl presentViewController:alert animated:true completion:nil];
}
@end
