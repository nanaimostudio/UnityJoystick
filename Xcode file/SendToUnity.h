//
//  SendToUnity.h
//  
//
//  Created by zeng le on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RedButtonAPI.h"
@interface SendToUnity : NSObject<RedButtonAPIDelegate>
@property(nonatomic) float x;
@property(nonatomic) float y; 
@property(nonatomic) bool isButtonAPressed;
@property(nonatomic) bool isButtonBPressed;
@property(nonatomic) bool isButtonCPressed;
@end
