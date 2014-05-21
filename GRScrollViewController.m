//
//  GRScrollViewController.m
//  Git Reference
//
//  Created by Howie Barker on 5/20/14.
//  Copyright (c) 2014 Howie Barker. All rights reserved.
//

#import "GRScrollViewController.h"

#import "GRScrollViewController.h"

static NSString * const Command = @"command";
static NSString * const Reference = @"reference";

@interface GRScrollViewController ()

@end

@implementation GRScrollViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView * scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(self.view. frame. size. width, self.view.frame.size.height * 1.5);
    
    [self.view addSubview:scrollView];
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 20, 100)];
    label.text = @"directions";
    
    [self.view addSubview:label];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSArray *)gitCommands {
    
    return @[@{Command: @"git status", Reference: @": shows changed files"},
             @{Command: @"git diff", Reference: @": shows actual changes"},
             @{Command: @"git add .", Reference: @": adds changed files to the commit"},
             @{Command: @"git commit -m \"notes\"", Reference: @": commits the changes"},
             @{Command: @"git push origin _branch_", Reference: @": pushes commits to branch named _branch_"},
             @{Command: @"git log", Reference: @": displays progress log"},
             @{Command: @"git comment --amend", Reference: @": re-enter last commit message"}
             ];
    
    
}


@end
