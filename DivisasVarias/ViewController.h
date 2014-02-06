//
//  ViewController.h
//  DivisasVarias
//
//  Created by Adrian Rangel on 2/5/14.
//  Copyright (c) 2014 Adrian Rangel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
- (IBAction)segmentAction:(id)sender;
- (IBAction)convertirButton:(id)sender;
- (IBAction)mostrarTasa:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *tasa;
@property (weak, nonatomic) IBOutlet UITextField *pesos;
@property (weak, nonatomic) IBOutlet UITextField *cambio;
@property (weak, nonatomic) IBOutlet UILabel *cambioLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@end
