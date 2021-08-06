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

//     栈的趋势：
//     高地址 -> 低地址



void kcFunction(id person, id kcSel, id kcSel2){
    
    
    //     内存结构为，
    
    //     递减，反向
    
    
    NSLog(@"person = %p",&person);
    NSLog(@"person = %p",&kcSel);
    NSLog(@"person = %p",&kcSel2);
}














// 1: 参数 会从前往后一直压


// 函数的参数





// 2: 结构体的属性 是怎么一个压栈情况


// self superclass












struct kc_struct{
    NSNumber *num1;
    NSNumber *num2;
} kc_struct;









- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ViewController 当前的类
    // self cmd (id)class_getSuperclass(objc_getClass("LGTeacher")) self cls hahaha person
    
    Class cls = [LGPerson class];
    
    
    
    void  *hahaha = &cls;  //    hahaha ,   查看其内容，发现， 指针变对象
    
    
    
    LGPerson *person = [LGPerson alloc];
    
    
    
    NSLog(@"person: %p ----->>>>> ha ha:  %p",&person,   hahaha); //   对照 A
    // 隐藏参数 会压入栈帧
    void *start  = (void *)&self;
    void *end = (void *)&person;
    long count = (start - end) / 0x8;
    
    for (long i = 0; i<count; i++) {
        void *address = start - 0x8 * i;
        if ( i == 1) {
            
            
            // _cmd,   特殊情况， 字符串， 非对象类型
            
            NSLog(@"_cmd  %p : %s\n~~~",address, *(char **)address);
        }else{
            
            // ( void * ), 万能指针，对象类型
            
            NSLog(@"   %p : %@\n~",address, *(void **)address);
            
            
            //   对照 B
        }
    }
    NSLog(@"\n\n____\n\n");
    
    // LGPerson  - 0x7ffeea0c50f8
    [(__bridge id)hahaha saySomething]; // 1 2  - <ViewController: 0x7f7f7ec09490>
    
    [person saySomething]; // self.kc_name = nil - (null)

    //
}


@end



//  person （ 对象 ）  的内存结构：

//   isa,  prop ( 属性 )

//   isa , kc_name







