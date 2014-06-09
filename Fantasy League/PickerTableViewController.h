//
//  PickerTableViewController.h
//  Fantasy League
//
//  Created by PaNa Mac on 08/06/14.
//  Copyright (c) 2014 PaNaInfotech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfigurationClass.h"

@interface PickerTableViewController : UITableViewController

@property (weak, nonatomic) ConfigurationClass *configObj;
@property (strong, nonatomic) NSIndexPath *checkedIndexPath;
@property (strong, nonatomic) NSArray *tableViewRowTextArray;
@property (strong, nonatomic) NSString *selectedCountry;

@end
