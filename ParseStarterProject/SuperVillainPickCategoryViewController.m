//
//  SuperVillainPickCategoryViewController.m
//  TeratoParse
//
//  Created by rusmanarief on 2/5/13.
//
//

#import "SuperVillainPickCategoryViewController.h"

@interface SuperVillainPickCategoryViewController ()

@end

@implementation SuperVillainPickCategoryViewController

@synthesize delegate;

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
    // Do any additional setup after loading the view from its nib.
    
    NSMutableArray *options = [NSMutableArray array];
    [options addObject:@"Zombie"];
    [options addObject:@"Werewolf"];
    [options addObject:@"Vampire"];
    [options addObject:@"Syaitan"];
    self.categoryOptions = options;
    self.pickedCategory = [options objectAtIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)done:(id)sender
{
    [[self delegate] pickCategoryDidFinish:self category:self.pickedCategory];
    [self dismissModalViewControllerAnimated:YES];
}

#pragma mark Picker DataSource/Delegate

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.categoryOptions count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.categoryOptions objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.pickedCategory = [self.categoryOptions objectAtIndex:row];
    NSLog(@"Child Category picked: %@", self.pickedCategory);
}

@end
