//
//  OVBIPartyComboViewController.m
//  Manifesto_Opinion
//
//  Created by Mahule, Abhijeet on 10/5/13.
//  Copyright (c) 2013 org.ovbi. All rights reserved.
//

#import "OVBIPartyComboViewController.h"
#import "OVBIQuestionsViewController.h"

@interface OVBIPartyComboViewController ()

@end

@implementation OVBIPartyComboViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UINavigationItem *n = [self navigationItem];
        [n setTitle:@"Party"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSubmit:(id)sender {
    NSLog(@"In onSubmit");
    OVBIQuestionsViewController *questionsViewController = [[OVBIQuestionsViewController alloc] init];
    [[self navigationController] pushViewController:questionsViewController animated:YES];
}

- (IBAction)onClickCongress:(id)sender {
    OVBIQuestionsViewController *questionsViewController = [[OVBIQuestionsViewController alloc] initForNewItem:1];
    [[self navigationController] pushViewController:questionsViewController animated:YES];    
}

- (IBAction)onClickBJP:(id)sender {
    OVBIQuestionsViewController *questionsViewController = [[OVBIQuestionsViewController alloc] initForNewItem:2];
    [[self navigationController] pushViewController:questionsViewController animated:YES];
}

- (IBAction)onClickAAP:(id)sender {
    OVBIQuestionsViewController *questionsViewController = [[OVBIQuestionsViewController alloc] initForNewItem:3];
    [[self navigationController] pushViewController:questionsViewController animated:YES];
}

- (IBAction)onClickSP:(id)sender {
    OVBIQuestionsViewController *questionsViewController = [[OVBIQuestionsViewController alloc] initForNewItem:4];
    [[self navigationController] pushViewController:questionsViewController animated:YES];
}

- (IBAction)onClickCPI:(id)sender {
    OVBIQuestionsViewController *questionsViewController = [[OVBIQuestionsViewController alloc] initForNewItem:5];
    [[self navigationController] pushViewController:questionsViewController animated:YES];
}
@end
