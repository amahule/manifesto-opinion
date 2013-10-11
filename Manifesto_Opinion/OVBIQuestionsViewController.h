//
//  OVBIQuestionsViewController.h
//  Manifesto_Opinion
//
//  Created by Mahule, Abhijeet on 10/5/13.
//  Copyright (c) 2013 org.ovbi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OVBIQuestionsViewController : UIViewController
{
    NSMutableArray *questionsArray;
    IBOutlet UILabel *question1;
    IBOutlet UILabel *question2;
    IBOutlet UILabel *question3;
    IBOutlet UILabel *question4;
    IBOutlet UILabel *question5;
    IBOutlet UILabel *question6;
    IBOutlet UISwitch *onOffSwitch1;
    IBOutlet UISwitch *onOffSwitch2;
    IBOutlet UISwitch *onOffSwitch3;
    IBOutlet UISwitch *onOffSwitch4;
    IBOutlet UISwitch *onOffSwitch5;
    IBOutlet UISwitch *onOffSwitch6;
    NSMutableString *partyName;
    
    int yesAnswers;
}
- (id)initForNewItem:(int)party;
- (IBAction)onSubmit:(id)sender;
@end
