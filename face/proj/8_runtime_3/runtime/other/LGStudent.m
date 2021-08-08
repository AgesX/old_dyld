//
//  LGStudent.m
//  LGTest
//
//  Created by cooci on 2019/2/28.
//

#import "LGStudent.h"
#import <objc/runtime.h>
#import "LGDog.h"

@implementation LGStudent



 
- (void)runMethod:(id)name{
    NSLog(@"%s",__func__);
}



- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    
    
    if (aSelector == @selector(run)) {
        
        return nil;
    }
    return [NSMethodSignature methodSignatureForSelector:aSelector];
    
    
}


- (void)doesNotRecognizeSelector:(SEL)aSelector{
    
    NSLog(@"%@  UN BROKEN ", NSStringFromSelector(aSelector));
    
    
    [self runMethod: @"err NO"];
    
    
    //
    
    //
    
    
    // 最终这里会走一下，
    
    // 但是 crash 不可避免
    
    
}
 


@end
