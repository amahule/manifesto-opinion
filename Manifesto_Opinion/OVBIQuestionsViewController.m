//
//  OVBIQuestionsViewController.m
//  Manifesto_Opinion
//
//  Created by Mahule, Abhijeet on 10/5/13.
//  Copyright (c) 2013 org.ovbi. All rights reserved.
//

#import "OVBIQuestionsViewController.h"

@interface OVBIQuestionsViewController ()

@end

@implementation OVBIQuestionsViewController

- (id)initForNewItem:(int)party
{
    self = [super initWithNibName:@"OVBIQuestionsViewController" bundle:nil];
    
    if(self){
        UINavigationItem *n = [self navigationItem];


        switch (party) {
            case 1:
                // This is Congress
                questionsArray = [[NSMutableArray alloc] initWithObjects:
                                  @"Privatization of power has benefited the residents of Delhi",
                                  @"Issuance of Driving Licenses has been computerized/expedited",
                                  @"Entire Public Transport switched over to CNG",
                                  @"Successful privatization of power",
                                  @"No increase in power rates after 2004",
                                  @"Increased compensation for acquired land",
                                  @"Successful in implementation of VAT",
                                  @"Revamp of PDS to ensure full ration to the poor",
                                  @"Braille books for blind students",
                                  @"Improvement of school libraries", nil];
                partyName = [NSMutableString stringWithString:@"Congress"];
                break;
            case 2:
                // This is BJP
                questionsArray = [[NSMutableArray alloc] initWithObjects:
                                  @"Revamp of PDS to ensure full ration to the poor",
                                  @"Braille books for blind students",
                                  @"Entire Public Transport switched over to CNG",
                                  @"Successful privatization of power",
                                  @"Privatization of power has benefited the residents of Delhi",
                                  @"Issuance of Driving Licenses has been computerized/expedited",
                                  @"No increase in power rates after 2004",
                                  @"Increased compensation for acquired land",
                                  @"Successful in implementation of VAT",
                                  @"Improvement of school libraries", nil];
                partyName = [NSMutableString stringWithString:@"BJP"];
                break;
            case 3:
                // This is AAP
                questionsArray = [[NSMutableArray alloc] initWithObjects:
                                  @"Issuance of Driving Licenses has been computerized/expedited",
                                  @"No increase in power rates after 2004",
                                  @"Revamp of PDS to ensure full ration to the poor",
                                  @"Braille books for blind students",
                                  @"Entire Public Transport switched over to CNG",
                                  @"Successful privatization of power",
                                  @"Privatization of power has benefited the residents of Delhi",
                                  @"Increased compensation for acquired land",
                                  @"Improvement of school libraries",
                                  @"Successful in implementation of VAT", nil];
                partyName = [NSMutableString stringWithString:@"Aam Aadmi Party"];
                break;
            case 4:
                // This is Samajwadi Party
                questionsArray = [[NSMutableArray alloc] initWithObjects:
                                  @"Entire Public Transport switched over to CNG",
                                  @"Successful privatization of power",
                                  @"Issuance of Driving Licenses has been computerized/expedited",
                                  @"No increase in power rates after 2004",
                                  @"Braille books for blind students",
                                  @"Privatization of power has benefited the residents of Delhi",
                                  @"Increased compensation for acquired land",
                                  @"Improvement of school libraries",
                                  @"Successful in implementation of VAT",
                                  @"Revamp of PDS to ensure full ration to the poor", nil];
                partyName = [NSMutableString stringWithString:@"Samajwadi Party"];
                break;
            case 5:
                // This is CPI/M Party
                questionsArray = [[NSMutableArray alloc] initWithObjects:
                                  @"Issuance of Driving Licenses has been computerized/expedited",
                                  @"No increase in power rates after 2004",
                                  @"Braille books for blind students",
                                  @"Entire Public Transport switched over to CNG",
                                  @"Successful privatization of power",
                                  @"Increased compensation for acquired land",
                                  @"Improvement of school libraries",
                                  @"Successful in implementation of VAT",
                                  @"Revamp of PDS to ensure full ration to the poor",
                                  @"Privatization of power has benefited the residents of Bengal", nil];
                partyName = [NSMutableString stringWithString:@"CPI-M"];
                break;

                
            default:
                break;
        }
        [n setTitle:partyName];
        yesAnswers = 0;
    }
    return self;
}

- (IBAction)onSubmit:(id)sender {
    if(onOffSwitch1.on){
        yesAnswers++;
    }
    if(onOffSwitch2.on){
        yesAnswers++;
    }
    if(onOffSwitch3.on){
        yesAnswers++;
    }
    if(onOffSwitch4.on){
        yesAnswers++;
    }
    if(onOffSwitch5.on){
        yesAnswers++;
    }
    if(onOffSwitch6.on){
        yesAnswers++;
    }
    
    NSLog(@"Number of yes answers = %d", yesAnswers);
    double percent = yesAnswers * 100/ 6 ;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Results" message:[NSString stringWithFormat:@"%@ score = %.0f %%", partyName, percent] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    yesAnswers = 0;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    @throw [NSException exceptionWithName:@"Wrong initializers" reason:@"Use initForNewItem" userInfo:nil];
    return nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [onOffSwitch1 setOnImage:[UIImage imageNamed:@"yesimage"]];
    [onOffSwitch1 setOffImage:[UIImage imageNamed:@"noimage"]];

    [onOffSwitch2 setOnImage:[UIImage imageNamed:@"yesimage"]];
    [onOffSwitch2 setOffImage:[UIImage imageNamed:@"noimage"]];

    [onOffSwitch3 setOnImage:[UIImage imageNamed:@"yesimage"]];
    [onOffSwitch3 setOffImage:[UIImage imageNamed:@"noimage"]];

    [onOffSwitch4 setOnImage:[UIImage imageNamed:@"yesimage"]];
    [onOffSwitch4 setOffImage:[UIImage imageNamed:@"noimage"]];
    
    [onOffSwitch5 setOnImage:[UIImage imageNamed:@"yesimage"]];
    [onOffSwitch5 setOffImage:[UIImage imageNamed:@"noimage"]];
    
    [onOffSwitch6 setOnImage:[UIImage imageNamed:@"yesimage"]];
    [onOffSwitch6 setOffImage:[UIImage imageNamed:@"noimage"]];

    // Do any additional setup after loading the view from its nib.
    question1.text = [questionsArray objectAtIndex:0];
    question2.text = [questionsArray objectAtIndex:1];
    question3.text = [questionsArray objectAtIndex:2];
    question4.text = [questionsArray objectAtIndex:3];
    question5.text = [questionsArray objectAtIndex:4];
    question6.text = [questionsArray objectAtIndex:5];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
