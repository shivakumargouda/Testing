//
//  ConfigurationClass.m
//  mCRM DEMO
//
//  Created by PaNa Mac on 17/05/14.
//  Copyright (c) 2014 PaNaInfotech. All rights reserved.
//

#import "ConfigurationClass.h"

@implementation ConfigurationClass

@synthesize selectedLabelText, selctedCellIndex;

static ConfigurationClass *instance = nil;

+(ConfigurationClass *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [ConfigurationClass new];
        }
    }
    return instance;
}

//Custom constructor for Configuration Object
-(id) init
{
    
    self.selectedLabelText = @"";
    
    return self;
}

@end
