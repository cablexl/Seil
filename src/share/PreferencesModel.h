// -*- Mode: objc; Coding: utf-8; indent-tabs-mode: nil; -*-

@import Cocoa;

@interface PreferencesModel : NSObject

@property BOOL resumeAtLogin;
@property BOOL checkForUpdates;
@property(copy) NSDictionary* values;

- (void)setValue:(int)newval forName:(NSString*)name;

@end
