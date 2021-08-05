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

    // 方法签名
    // aspect 切面编程 - 消息转发
   
    if (aSelector == @selector(run)) {
        Method method = class_getInstanceMethod([self class], @selector(runMethod:));
        const char *type = method_getTypeEncoding(method);
        return [NSMethodSignature signatureWithObjCTypes:type];
    }
    return [NSMethodSignature methodSignatureForSelector:aSelector];
}




 
 
- (void)forwardInvocation:(NSInvocation *)anInvocation{
    // pop alter
    NSLog(@"hahaha   _  _  _ 来了 : %s                -%@",__func__,NSStringFromSelector(anInvocation.selector));
 //   anInvocation.selector = @selector(runMethod:);
 //   [anInvocation invoke];
}

 


@end
