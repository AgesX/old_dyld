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
        
        
        //  这样写，创建之后，马上释放了
        
        
        
        //  因为其，引用计数，为 0
        
        
        
        
        id __weak obj = [[NSObject alloc] init];
        //
        
        
        
        
        
        
        
        
        
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
