//
//  LoggerHelper.m
//  Unity
//
//  Created by larryhou on 6/13/16.
//  Copyright © 2016 larryhou. All rights reserved.
//

#import "NativeLogger.h"

@implementation NativeLogger
+ (void) log:(NSString *)message
{
    NSLog(@"Received message: %@", message);
}
@end
