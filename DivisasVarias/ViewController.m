//
//  ViewController.m
//  DivisasVarias
//
//  Created by Adrian Rangel on 2/5/14.
//  Copyright (c) 2014 Adrian Rangel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.imageV.image = [UIImage imageNamed:@"billetes-dolar.jpg"];
    [self.tasa setHidden:TRUE];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quitarTeclado)];
    [self.view addGestureRecognizer:tap];
    
}

-(void)quitarTeclado {
    
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentAction:(id)sender {
    switch(self.segmentControl.selectedSegmentIndex){
        case 0: self.cambioLabel.text = @"Dólares"; self.tasa.text=@"13.30"; self.cambio.text =@""; self.imageV.image = [UIImage imageNamed:@"billetes-dolar.jpg"]; break;
        case 1: self.tasa.text=@"21.91"; self.cambioLabel.text= @"Libras"; self.cambio.text =@""; self.imageV.image = [UIImage imageNamed:@"londres-billetes.jpg"];break;
        case 2: self.tasa.text=@"17.81"; self.cambioLabel.text = @"Euros";self.cambio.text =@""; self.imageV.image = [UIImage imageNamed:@"Euros.jpg"];break;
        case 3: self.tasa.text=@"0.13"; self.cambioLabel.text = @"Yenes"; self.cambio.text =@""; self.imageV.image = [UIImage imageNamed:@"yenes.jpg"];break;
    }
}

- (IBAction)convertirButton:(id)sender {
    UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"ERROR" message:@"Datos inválidos" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil ];
    
    if ([self.pesos.text isEqualToString:@""]) {
        [error show];
    }else {
        CGFloat tc = [self.tasa.text doubleValue];
        CGFloat pe = [self.pesos.text doubleValue];
        
        CGFloat cambio = pe / tc;
        self.cambio.text = [NSString stringWithFormat:@"%0.2f", cambio];
    }
}

- (IBAction)mostrarTasa:(id)sender {
    if ([sender isOn]) {
        [self.tasa setHidden:FALSE];
    }else{
        [self.tasa setHidden:TRUE];
    }
}
@end
