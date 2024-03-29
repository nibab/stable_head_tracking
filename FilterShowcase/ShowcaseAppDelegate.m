#import "ShowcaseAppDelegate.h"

@implementation ShowcaseAppDelegate


/*
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    filterNavigationController = [[UINavigationController alloc] init];
    filterViewController =[[FilterViewController alloc] initWithFilterType:GPUIMAGE_FACES];
    
    [filterNavigationController pushViewController:filterViewController animated:NO];

    [self.window setRootViewController:filterNavigationController];
    [self.window makeKeyAndVisible];
    
    return YES;
}
*/

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // We use the device orientation to set the video orientation of the video preview,
    // and to set the orientation of still images and recorded videos.
    
    // Inform the device that we want to use the device orientation.
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Inform the device that we no longer require access the device orientation.
    [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Inform the device that we want to use the device orientation again.
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Let the device power down the accelerometer if not used elsewhere while backgrounded.
    [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
}

@end
