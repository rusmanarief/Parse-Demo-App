#import "ParseStarterProjectViewController.h"
#import <Parse/Parse.h>

@implementation ParseStarterProjectViewController

-(IBAction)saveToCloud {
    // do something
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    [testObject setObject:@"Rusman" forKey:@"foo"];
    [testObject save];
}

-(IBAction)downloadFromCloud {
    // download from Parse
    PFQuery *query = [PFQuery queryWithClassName:@"TestObject"];
    PFObject *testObject = [query getObjectWithId:@"STAOOTqFT7"];
    
    //NSLog(@"outputText: %@", downloadedString);
    self.outputText.text = [testObject objectForKey:@"foo"];
}

-(IBAction)downloadBackgroundFromCloud {
    // download from Parse
    PFQuery *query = [PFQuery queryWithClassName:@"TestObject"];
    [query getObjectInBackgroundWithId:@"STAOOTqFT7"
                                 block:^(PFObject *testObject, NSError *error) {
        if (!error) {
            // The get request succeeded. Log the score
            NSString *text = @"foo: ";
            
            // foo
            text = [text stringByAppendingString:[testObject objectForKey:@"foo"]];
            
            // createdAt
            text = [text stringByAppendingString:@"\n\n"];
            text = [text stringByAppendingString:@"createdAt: "];
            NSDate *createdDate = testObject.createdAt;
            NSString *createdDateString = [NSDateFormatter localizedStringFromDate:createdDate
                                                                  dateStyle:NSDateFormatterFullStyle
                                                                  timeStyle:NSDateFormatterFullStyle];
            text = [text stringByAppendingString:createdDateString];
            
            // updatedAt
            text = [text stringByAppendingString:@"\n\n"];
            text = [text stringByAppendingString:@"updatedAt: "];
            NSDate *updatedDate = testObject.updatedAt;
            NSString *updatedDateString = [NSDateFormatter localizedStringFromDate:updatedDate
                                                                  dateStyle:NSDateFormatterFullStyle
                                                                  timeStyle:NSDateFormatterFullStyle];
            text = [text stringByAppendingString:updatedDateString];
            
            // print to textview
            self.outputText.text = text;            
        } else {
            // Log details of our failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


#pragma mark - UIViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
//    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
//    [testObject setObject:@"bar" forKey:@"foo"];
//    [testObject save];
    
    [super viewDidLoad];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
