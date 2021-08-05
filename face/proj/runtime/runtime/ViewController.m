//
//  ViewController.m
//  runtime
//
//  Created by Jz D on 2021/8/5.
//

#import "ViewController.h"




#import <Foundation/Foundation.h>
#import "LGStudent.h"
#import "LGPerson.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    LGStudent *student = [LGStudent alloc];
    [student run];
}


@end
