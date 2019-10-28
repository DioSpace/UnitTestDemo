//
//  DioUnitTest.m
//  DioUnitTest
//
//  Created by hello on 2019/10/26.
//  Copyright © 2019 Dio. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <XCTest/XCTestCase+AsynchronousTesting.h>
#import "ViewController.h"
#import "RequestManager.h"

@interface DioUnitTest : XCTestCase

@property(nonatomic, strong)ViewController *vc;

@end

@implementation DioUnitTest

// 初始化的代码，在测试方法调用之前调用
- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [super setUp];
    // 实例化需要测试的类
    self.vc = [[ViewController alloc] init];
}

// 释放测试用例的资源代码，这个方法会每个测试用例执行后调用
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    // 清空
    [super tearDown];
    self.vc = nil;
}

// 测试用例的例子，注意测试用例一定要test开头
/*
 - (void)testExample {
 // This is an example of a functional test case.
 // Use XCTAssert and related functions to verify your tests produce the correct results.
 }
 */
-(void)testMyFunc {
    // 调用需要测试的方法，
    int result = [self.vc getNum];
    // 如果不相等则会提示@“测试不通过”
    XCTAssertEqual(result, 100,@"测试不通过");
}

/*
 对于异步方法的测试(Asynchronous Testing)
 对于block等异步方式执行的方法，在测试的时候，我们要使用，一般的做法都是延迟，等待block执行完毕再进行检查
 主要步骤
 声明一个XCTestExpectation
 在block中使用fulfill抛出错误
 waitForExpectationsWithTimeout进行一个延迟时间设定
 **/
- (void)testLogin{
    //声明一个Exception
    XCTestExpectation *loginException = [self expectationWithDescription:@"loginError"];
    
    NSString *url = @"https://www.baidu.com";
    NSDictionary *para = @{@"a":@"A", @"b":@"B"};
    [[RequestManager sharedManager] getRequest:url parameters:para success:^(id  _Nonnull responseObject) {
        int code = 200;//这里是解析responseObject 获得的服务器返回码
        XCTAssertEqual(code, 0, @"login error");
        XCTAssertNotNil(responseObject, @"返回出错");
        //抛出错误
        [loginException fulfill];
    } failure:^(NSError * _Nonnull error) {
        XCTFail(@"login error:%@", error);
        //抛出错误
        [loginException fulfill];
    }];
    
    //等待时间，超过了就不再等待往下执行
    [self waitForExpectationsWithTimeout:2 handler:^(NSError *error) {
        XCTFail(@"time out:%@",error);
    }];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    // 测试性能例子
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        // 需要测试性能的代码
        for (int i = 0; i<100; i++) {
            NSLog(@"dd");
        }
    }];
}

@end
