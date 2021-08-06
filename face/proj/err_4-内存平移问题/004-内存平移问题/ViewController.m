//
//  ViewController.m
//  004-内存平移问题
//
//  Created by cooci on 2020/10/21.
//

#import "ViewController.h"
#import "LGPerson.h"

@interface ViewController ()

@end

@implementation ViewController

// 高地址 -> 低地址
void kcFunction(id person, id kcSel, id kcSel2){
    NSLog(@"person = %p",&person);
    NSLog(@"person = %p",&kcSel);
    NSLog(@"person = %p",&kcSel2);
}


// 1: 参数 会从前往后一直压
// 2: 结构体的属性 是怎么一个压栈情况 self superclass

struct kc_struct{
    NSNumber *num1;
    NSNumber *num2;
} kc_struct;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ViewController 当前的类
    // self cmd (id)class_getSuperclass(objc_getClass("LGTeacher"))
    
    
    
    
    //  self cls kc person
    
    
    
    Class cls = [LGPerson class];
    void  *haha = &cls;
    //   haha 是指针，指向类
    //  模拟对象指针的结构
    
    
    // haha 的指针走向，
    // 与对象的指针走向，  一致
    
    
    
    

    
    // LGPerson  - 0x7ffeea0c50f8
    [(__bridge id)haha saySomething]; // 1 2  - <ViewController: 0x7f7f7ec09490>
    
   
/*
    
 
 
 
    函数压栈
 
 
 
    栈帧的结构：
 
 
    
    ---
 
 
    haha ， 万能指针
 
 
    Class cls
 
 
    (super 结构体)
 
    self ( receiver )
 
    superClass
 
 
 
    (   方法调用，默认省略的，两个参数  )
 
    _cmd
 
 
    self
    
 
 
 
 
 
 */
    
    
    
}










/*
 
 
 struct objc_super {
 
 
     /// Specifies an instance of a class.
     __unsafe_unretained _Nonnull id receiver;

 
 
 
 
 
 
     /// Specifies the particular superclass of the instance to message.

     __unsafe_unretained _Nonnull Class super_class;

 };


 
 */












@end


//  haha 指针，指向类



//  haha 指针， 里面没东西


//  haha 只是一个，8 字节的指针




//  haha 指针，查找 name 属性，就是其首地址平移 8 个字节



