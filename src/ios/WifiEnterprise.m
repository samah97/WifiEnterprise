/********* WifiEnterprise.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface WifiEnterprise : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)connect:(CDVInvokedUrlCommand*)command;
@end

@implementation WifiEnterprise

- (void)connect:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString *ssid = [[command.arguments objectAtIndex:0] valueForKey:@"ssid"];
    NSString *password = [[command.arguments objectAtIndex:0] valueForKey:@"password"];

    if(ssid == nil ){
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:"SSID Empty"];
    }

    if(password == nil){
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:"Password Empty"];
    }

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:"success"];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end
