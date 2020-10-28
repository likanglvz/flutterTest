#import "HelloTestPlugin.h"
#if __has_include(<helloTest/helloTest-Swift.h>)
#import <helloTest/helloTest-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "helloTest-Swift.h"
#endif

@implementation HelloTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHelloTestPlugin registerWithRegistrar:registrar];
}
@end
