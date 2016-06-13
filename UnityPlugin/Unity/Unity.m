#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "NativeLogger.h"
#import "iOSUtils.h"

extern void ios_log(const char* message)
{
    NSLog(@">>==========");
    NSString *text = message != NULL ? [NSString stringWithUTF8String:message] : [NSString stringWithUTF8String:""];
    
    [NativeLogger log:text];
}

extern void print_root_controller()
{
    NSLog(@"rootController -> %@", [iOSUtils getRootController]);
}

extern float get_battery_level()
{
    return [iOSUtils getBatteryLevel];
}

extern void show_native_alert()
{
    [iOSUtils showNativeAlert];
}