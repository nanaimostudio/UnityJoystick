//
//  SendToUnity.m
//  
//
//  Created by zeng le on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SendToUnity.h"
#define kJoystickCenterX 50
#define kJoystickCenterY 49
@implementation SendToUnity
@synthesize x,y;
@synthesize isButtonAPressed, isButtonBPressed, isButtonCPressed;
-(id)init{
    if (self = [super init]) {
        RedButtonAPI *redButton = [[RedButtonAPI alloc] init];
        redButton.delegate = self;
    }
    return self;
}


- (void)joystickDataofX:(NSString *)xData Y:(NSString *)yData{
    self.x = [xData intValue];
    self.y = [yData intValue];
}


- (void)receivedRawDataFromArduinoWithRedundantCheck:(NSString *)data{
    self.x = kJoystickCenterX;
    self.y = kJoystickCenterY;
    self.isButtonAPressed = false;
    self.isButtonBPressed = false;
    self.isButtonCPressed = false;
}

- (void)buttonAPressed{
    self.isButtonAPressed = true;
}

- (void)buttonBPressed{
    self.isButtonBPressed = true;
}

- (void)buttonCPressed{
    self.isButtonCPressed = true;
}

@end

static SendToUnity *tmp = nil;

char* MakeStringCopy (const char* string)
{
	if (string == NULL)
		return NULL;
	
	char* res = (char*)malloc(strlen(string) + 1);
	strcpy(res, string);
	return res;
}

extern "C" {
//    const char* FooPluginFunction(){
//        if (tmp == nil) {
//            tmp = [[SendToUnity alloc] init];
//        }
//        return MakeStringCopy([tmp.string UTF8String]);
//    }
    
    float RedButtonJoystickX(){
        if (tmp == nil) {
            tmp = [[SendToUnity alloc] init];
        }
            return (tmp.x-kJoystickCenterX)/kJoystickCenterX;
    }
    float RedButtonJoystickY(){
        if (tmp == nil) {
            tmp = [[SendToUnity alloc] init];
        }
        if ((tmp.y-kJoystickCenterY)/kJoystickCenterY>1) {
            return 1.0f;
        }
        else {
            return (tmp.y-kJoystickCenterY)/kJoystickCenterY;
        }
    }
    bool RedButtonIsButtonAPressed(){
        if (tmp == nil) {
            tmp = [[SendToUnity alloc] init];
        }
        return tmp.isButtonAPressed;
    }
    bool RedButtonIsButtonBPressed(){
        if (tmp == nil) {
            tmp = [[SendToUnity alloc] init];
        }
        return tmp.isButtonBPressed;
    }
    bool RedButtonIsButtonCPressed(){
        if (tmp == nil) {
            tmp = [[SendToUnity alloc] init];
        }
        return tmp.isButtonCPressed;
    }
}