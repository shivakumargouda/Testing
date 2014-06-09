//
//  ConfigurationClass.h
//  mCRM DEMO
//
//  Created by PaNa Mac on 17/05/14.
//  Copyright (c) 2014 PaNaInfotech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConfigurationClass.h"

@interface ConfigurationClass : NSObject {
    
    NSString *selectedLabelText;
    NSIndexPath *selctedCellIndex;
    //int numberOfChildObjects;
    //BOOL statusFlag;
}

@property(strong, nonatomic)NSString *selectedLabelText;
@property(strong, nonatomic)NSIndexPath *selctedCellIndex;

//@property(readwrite, assign)int numberOfChildObjects;
//@property(readwrite, assign)BOOL statusFlag;

+(ConfigurationClass*)getInstance;


@end
