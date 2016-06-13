//
//  Unity.h
//  Unity
//
//  Created by larryhou on 6/13/16.
//  Copyright © 2016 larryhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface iOSUtils : NSObject
{
}
+ (float)getBatteryLevel;

+ (NSString*)getRootController;
+ (void)showNativeAlert;
@end
