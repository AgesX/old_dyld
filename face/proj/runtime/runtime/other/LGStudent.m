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





void lg_dynamicMethodIMP(){
    NSLog(@"%s",__func__);
}
// 网络 数据 - int string
// [int length] --> 做一些处理 -
// 写代码 在你奔溃 之前 - 动态处理
// crash 收集 - 动态方法解析
// 也不好 --




+ (BOOL)resolveInstanceMethod:(SEL)sel{
    // 请你处理 - 给第一次机会
    // sel - imp
    NSLog(@"来了,老弟");
    // load - 可以
    // 方法 -- 动态化
    // lg_run  --
    if (sel==@selector(run)) {
        class_addMethod([self class], sel, (IMP)lg_dynamicMethodIMP, "v@:");
        
        
        
        
        //  v@:
        //  3 个符号，代表，3 个参数
        //  v , void
        //  @ , id   , target
        //  : , selector, _cmd
        
        
        return YES;
    }
    return NO;
}

















/*
 
 
 
 
 
//
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    NSLog(@"%s",__func__);
//    // 机会 - run int - string length
//    if (aSelector == @selector(run)) {
//        return [LGDog new];
//    }
//    return [super forwardingTargetForSelector:aSelector];
//}
//
- (void)runMethod:(id)name{
    NSLog(@"%s",__func__);
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{

    // 方法签名
    // aspect 切面编程 - 消息转发
    Method method = class_getInstanceMethod([self class], @selector(runMethod:));
    const char *type = method_getTypeEncoding(method);
    return [NSMethodSignature signatureWithObjCTypes:type];
//    if (aSelector == @selector(run)) {
//
//    }
//    return [NSMethodSignature methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    // pop alter
    NSLog(@"来了:%s-%@",__func__,NSStringFromSelector(anInvocation.selector));
    anInvocation.selector = @selector(runMethod:);
    [anInvocation invoke];
}

 
 
 
 */




@end
