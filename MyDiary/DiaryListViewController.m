//
//  DiaryListViewController.m
//  MyDiary
//
//  Created by chenchen on 13-9-8.
//  Copyright (c) 2013年 chenchen. All rights reserved.
//

#import "DiaryListViewController.h"
#import "DetailDiaryViewController.h"
#import "Diary.h"
#import "DiaryStore.h"

@interface DiaryListViewController ()

@end

@implementation DiaryListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DetailDiary"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSInteger row = [indexPath row];
        
        Diary *diary = [self.diaries objectAtIndex:row];
        
        DetailDiaryViewController *detailDiaryViewController = (DetailDiaryViewController *)[segue destinationViewController];
        detailDiaryViewController.diary = diary;
    }
    
    if ([segue.identifier isEqualToString:@"AddDiary"]) {
        CreateDiaryViewController *createDiaryViewController = (CreateDiaryViewController *)[segue destinationViewController];
        createDiaryViewController.delegate = self;
    }

}

- (void) createDiaryViewController:(CreateDiaryViewController *)createDiaryController didSaveWithDiary:(Diary *)theDiary
{
    Diary *diary = theDiary;
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.diaries addObject:diary];
    [self.tableView reloadData];
}

- (void) createDiaryViewControllerDidCancel:(CreateDiaryViewController *)createDiaryController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[self navigationItem] setLeftBarButtonItem:[self editButtonItem]];
    
    [[self navigationItem] setTitle:@"日记列表"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.diaries = (NSMutableArray *)[[DiaryStore defaultStore] diaries];
    [super viewDidAppear:animated];
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
    return self.diaries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DiaryCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
   
    Diary *diary = [self.diaries objectAtIndex:indexPath.row];
    cell.textLabel.text = [diary title];
    
    cell.detailTextLabel.text = [[diary dateCreate] description];
    
    return cell;
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
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

#pragma mark - Table view delegate


@end
