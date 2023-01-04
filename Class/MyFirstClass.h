//
//  MyFirstClass.h
//  Class
//
//  Created by 권지민 on 2023/01/03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyFirstClass : NSObject
{ // Instance Variable 인스턴스 변수
    
    int      myFirstInt;
    NSString *myName;
    NSString *mySecret;
}
// make getter, setter 접근자 메서드 생성
@property (nonatomic, assign) int      myFirstInt;
@property (nonatomic, retain) NSString *myName;

// Instance Method
- (void) myFirstMethod;
- (void) setMySecret: (NSString *)secret;
- (NSString *)getMySecret;

// Class Method
+ (void) itIsClassMethod;
@end

NS_ASSUME_NONNULL_END
