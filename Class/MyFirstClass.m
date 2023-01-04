//
//  MyFirstClass.m
//  Class
//
//  Created by 권지민 on 2023/01/03.
//

#import "MyFirstClass.h"

@implementation MyFirstClass
@synthesize myFirstInt, myName; // Synthesize는 property와 짝을 이뤄서 getter와 setter를 자동 생성
// 호출 되면 로그를 남긴다
- (void) myFirstMethod {
    NSLog(@"It is instance method");
}

// mySecret 인스턴스 변수 설정(setter)
- (void) setMySecret:(NSString *)secret {
    mySecret = [NSString stringWithString:secret];
}

// mySecret 인스턴스 변수 반환(getter)
- (NSString *) getMySecret {
    return mySecret;
}

// 호출되면 로그 남기기
+ (void) itIsClassMethod {
    NSLog(@"It is class method. It works without alloc or init");
}
@end
