//
//  main.m
//  Class
//
//  Created by 권지민 on 2023/01/03.
//

#import <Foundation/Foundation.h>
#import "MyFirstClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 클래스 메소드는 초기화도 하지 않고 메소드를 호출 할 수 있다
        [MyFirstClass itIsClassMethod];
        
        // MyFirstClass의 인스턴스(객체)를 선언하고 초기화 한다.
        // MyFirstClass 를 메모리에 할당하고 초기화하여 인스턴스를 생성한다
        MyFirstClass *instance = [[MyFirstClass alloc] init];
        // -> instance에 MyFirstClass 라는 클래스를 초기화하여 집어넣어 주어라.
        
        // 인스턴스의 인스턴스 변수인 myName을 세팅
        [instance setMyName:@"jimin"];
        
        // 세팅된 myName을 name 이라는 새로운 인스턴스에 넣어줌
        NSString *name = [instance myName];
        NSLog(@"My name is %@", name);
        
        // mySecret을 세팅
        [instance setMySecret:@"It's top secret!!"];
        NSLog(@"My secret is %@,", [instance getMySecret]);
        
        // myFirstInt 세팅
        instance.myFirstInt = 88;
        NSLog(@"myFirstInt : %d", [instance myFirstInt]);
        
        //can change property values
        instance.myName = @"my name";
        [instance setMyFirstInt:77];
        
        NSLog(@"My name is %@", [instance myName]);
        NSLog(@"MyFirstInt is %d", instance.myFirstInt);
        
    }
    return 0;
}
