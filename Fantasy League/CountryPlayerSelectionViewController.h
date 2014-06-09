//
//  CountryPlayerSelectionViewController.h
//  Fantasy League
//
//  Created by PaNa Mac on 08/06/14.
//  Copyright (c) 2014 PaNaInfotech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfigurationClass.h"

@interface CountryPlayerSelectionViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property(strong, nonatomic)NSString *tempSelectedText;
@property(weak, nonatomic) ConfigurationClass *configObj;
@property(strong, nonatomic)NSMutableArray *countryListArray;
@property(strong, nonatomic)NSMutableArray *playerListArray;
@property(weak, nonatomic)IBOutlet UITableView *tableObject;
@end
