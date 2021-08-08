//
//  main.m
//  weak
//
//  Created by Jz D on 2021/8/6.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        //
        
        //
        
        
        //
        
        
        // tmpObj, 这个临时变量，默认 strong 修饰
        
        //
        
        // tmpObj，会添加到这个缓存池中， autoreleasepool
        
        
        
        
        id tmpObj = [[NSObject alloc] init];
        
        
        
        //
        
        //
        
        
        //
        
        //
        
        // tmpObj, 引用计数为 1
        // tmpObj, 延缓了 obj 的生命周期
        
        
        
        id __weak obj = tmpObj;
        // 相当于，   对 obj 有一个 retain 操作
        // obj 的引用计数 + 1
        
        
        
        
        //  会调用， objc_initWeak
        
        
        
        
        //  流程：    看汇编，找到入口函数，去源码里面翻
        
        
        
        
        
        
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}





/*
 
 
 
 weak :
 
 关键是， hash table 散列表
 
 
 {
 
 
 1,  自旋锁
 
 2， 引用计数表
 
 3， 弱引用表
 
 
 
 }
 
 
 
 
 */
