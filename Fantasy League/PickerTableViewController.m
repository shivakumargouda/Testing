//
//  PickerTableViewController.m
//  Fantasy League
//
//  Created by PaNa Mac on 08/06/14.
//  Copyright (c) 2014 PaNaInfotech. All rights reserved.
//

#import "PickerTableViewController.h"


@interface PickerTableViewController ()

@end

@implementation PickerTableViewController

@synthesize checkedIndexPath, tableViewRowTextArray, selectedCountry, configObj;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Get the instance of the configurartion calss
    configObj=[ConfigurationClass getInstance];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //Assing the index value of the all ready selected picker value
    self.checkedIndexPath = [NSIndexPath indexPathForRow:3 inSection:0];
    
    if ([[self selectedCountry]isEqualToString:@"Country"]) {
        
        tableViewRowTextArray = [[NSArray alloc]initWithObjects:
                                 @"Algeria",
                                 @"Argentina",
                                 @"Australia",
                                 @"Belgium",
                                 @"Brazil",
                                 nil];

    }
    else if ([[self selectedCountry]isEqualToString:@"Algeria"]) {
        
        tableViewRowTextArray = [[NSArray alloc]initWithObjects:
                                 @"Mohamed Zemmamouche",
                                 @"Rais Mbolhi",
                                 @"Cedric Si_Mohamed",
                                 @"Carl Medjani",
                                 @"Aissa Mandi",
                                 @"Madjid Bougherra",
                                 @"Faouzi Ghoulam",
                                 @"Rafik Halliche",
                                 @"Essaid Belkalem",
                                 @"Liassine Cadamuro",
                                 @"Djamel Mesbah",
                                 @"Mehdi Mostefa",
                                 @"Sofiane Feghouli",
                                 @"Saphir Taider",
                                 @"Medhi Lacen",
                                 @"Abdelmoumen Djabou",
                                 nil];
        
    }
    
    else if ([[self selectedCountry]isEqualToString:@"Algeria"]) {
        
        tableViewRowTextArray = [[NSArray alloc]initWithObjects:
                                 @"Mohamed Zemmamouche",
                                 @"Rais Mbolhi",
                                 @"Cedric Si_Mohamed",
                                 @"Carl Medjani",
                                 @"Aissa Mandi",
                                 @"Madjid Bougherra",
                                 @"Faouzi Ghoulam",
                                 @"Rafik Halliche",
                                 @"Essaid Belkalem",
                                 @"Liassine Cadamuro",
                                 @"Djamel Mesbah",
                                 @"Mehdi Mostefa",
                                 @"Sofiane Feghouli",
                                 @"Saphir Taider",
                                 @"Medhi Lacen",
                                 @"Abdelmoumen Djabou",
                                 nil];
        
    }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
 // Return the number of rows in the section.
    return [tableViewRowTextArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Set up the cell...
    cell.textLabel.text = [tableViewRowTextArray objectAtIndex:indexPath.row];
    
    if([self.checkedIndexPath isEqual:indexPath]) {
		cell.accessoryType = UITableViewCellAccessoryCheckmark;
	}
	else {
		cell.accessoryType = UITableViewCellAccessoryNone;
	}
    
    return cell;
}

#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([self checkedIndexPath]) {
        UITableViewCell* uncheckCell = [tableView cellForRowAtIndexPath:self.checkedIndexPath];
        uncheckCell.accessoryType = UITableViewCellAccessoryNone;
    }
    UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    [self setCheckedIndexPath:indexPath];
    
    if ([[self selectedCountry]isEqualToString:@"Country"]) {
        
         configObj.selectedLabelText = cell.textLabel.text;
    }
    else {
        
        
    }
    
    
    //Push the view controller.
    //[self.navigationController popViewControllerAnimated:YES];
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
