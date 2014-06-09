//
//  CountryPlayerSelectionViewController.m
//  Fantasy League
//
//  Created by PaNa Mac on 08/06/14.
//  Copyright (c) 2014 PaNaInfotech. All rights reserved.
//

#import "CountryPlayerSelectionViewController.h"
#import "PickerTableViewController.h"

@interface CountryPlayerSelectionViewController ()

@end

@implementation CountryPlayerSelectionViewController
@synthesize tempSelectedText, configObj, tableObject;
@synthesize countryListArray, playerListArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //Get the instance of the configurartion calss
    configObj=[ConfigurationClass getInstance];
    
    configObj.selectedLabelText = @"Country";
    
    countryListArray = [[NSMutableArray alloc]initWithObjects:@"Country",
                        @"Country",
                        @"Country",
                        @"Country",
                        @"Country",
                        @"Country",
                        @"Country",
                        @"Country",
                        @"Country",
                        @"Country",
                        @"Country",
                        nil];
    
    playerListArray = [[NSMutableArray alloc]initWithObjects:@"Player",
                        @"Player",
                        @"Player",
                        @"Player",
                        @"Player",
                        @"Player",
                        @"Player",
                        @"Player",
                        @"Player",
                        @"Player",
                        @"Player",
                       nil];

}

- (void)viewWillAppear:(BOOL)animated {
    
    NSLog(@"Selected country is %@", configObj.selectedLabelText);
    
    if (![[configObj selectedLabelText] isEqualToString:@"Country"] ) {
        
        [countryListArray removeObjectAtIndex:configObj.selctedCellIndex.row];
        [countryListArray insertObject:configObj.selectedLabelText atIndex:configObj.selctedCellIndex.row];
        [tableObject reloadData];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [countryListArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //cell.textLabel.textAlignment = NSTextAlignmentCenter;
    
    cell.textLabel.text = [countryListArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [playerListArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *cellLabelText = cell.textLabel.text;

    configObj.selctedCellIndex = indexPath;
    
    if ([cellLabelText isEqualToString:@"Country"]) {
        self.tempSelectedText = cell.textLabel.text;
    }
    else {
        self.tempSelectedText = cell.detailTextLabel.text;
    }
    
    NSLog(@"Selected cell text is : %@", self.tempSelectedText);

}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section

{
    return @"Select Country and Player";
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 45.0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return 1.0;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    PickerTableViewController  *controller = [segue destinationViewController];
    
    //Get the new view controller using [segue destinationViewController].
    controller.selectedCountry = self.tempSelectedText;
    
    //NSLog(@"controller.selectedCountry cell text is : %@", controller.selectedCountry);
}

@end
