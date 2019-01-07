//
//  ViewController.m
//  EjemploSDK
//
//  Created by Fabricio Aguilar on 25/8/18.
//  Copyright © 2018 R. Fabricio Aguilar Aguilar. All rights reserved.
//

#import "ViewController.h"
//#import "TcsChequeFramework/TcsChequeFramework-Swift.h"
@import TcsChequeFramework;



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnDep2:(id)sender{
    
    //TcsChequeContext  *tcsContext = [[TcsChequeContext alloc] init]
    TcsChequeContext *tcc = [TcsChequeContext new];
    
    tcc.serial = @"SERIE 1234";
    tcc.huellaDispositivo = @"huella 1234";
    tcc.identificacionCliente = @"identificacionCliente 1234";
    tcc.codigoSeguridad = @"codigoSeguridad 1234";
    tcc.celular = @"celular 1234";
    tcc.contexto = self;
    //TcsCheque *tcsCheque =  [[TcsCheque alloc] initWithFrame]
    //[TcsCheque depositarWith_contexto:(TcsChequeContext * _Nonnull)];
    [TcsCheque consultarWith_contexto:(tcc)];
}

- (IBAction)btnDeposito:(id)sender {
    
    //TcsChequeContext  *tcsContext = [[TcsChequeContext alloc] init]
    TcsChequeContext *tcc = [TcsChequeContext new];
    
    tcc.serial = @"SERIE 1234";
    tcc.huellaDispositivo = @"huella 1234";
    tcc.identificacionCliente = @"identificacionCliente 1234";
    tcc.codigoSeguridad = @"codigoSeguridad 1234";
    tcc.celular = @"celular 1234";
    tcc.contexto = self;
    //TcsCheque *tcsCheque =  [[TcsCheque alloc] initWithFrame]
    //[TcsCheque depositarWith_contexto:(TcsChequeContext * _Nonnull)];
    [TcsCheque depositarWith_contexto:(tcc)];
}
@end
