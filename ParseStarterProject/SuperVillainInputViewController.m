//
//  SuperVillainInputViewController.m
//  TeratoParse
//
//  Created by rusmanarief on 2/5/13.
//
//

#import "SuperVillainInputViewController.h"
#import "SuperVillainPickCategoryViewController.h"
#import "SuperVillainQueryViewController.h"

@interface SuperVillainInputViewController () <SuperVillainPickCategoryViewControllerDelegate>

@end

@implementation SuperVillainInputViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.pickedCategory = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.pickCategoryViewController = [[SuperVillainPickCategoryViewController alloc] init];
    self.pickCategoryViewController.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pickCategory
{
    [self.navigationController presentModalViewController:self.pickCategoryViewController animated:YES];
}

-(IBAction)querySuperVillain
{
    SuperVillainQueryViewController *queryViewController = [[SuperVillainQueryViewController alloc] init];
    queryViewController.category = self.pickedCategory;
    
    if(self.pickedCategory != nil)
    {
        [self.navigationController pushViewController:queryViewController animated:YES];
    }
        else
    {
        [[[UIAlertView alloc] initWithTitle:@"Category missing"
                                    message:@"Make sure you select a category first!"
                                   delegate:nil
                          cancelButtonTitle:@"ok"
                          otherButtonTitles:nil] show];
    }
}

#pragma mark - SuperVillainPickCategoryViewController

-(void)pickCategoryDidFinish:(SuperVillainPickCategoryViewController *)controller category:(NSString *)category
{
    self.categoryText.text = self.pickedCategory = category;
    NSLog(@"Parent Category picked: %@", category);
}

@end
