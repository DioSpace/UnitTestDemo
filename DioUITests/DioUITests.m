//
//  DioUITests.m
//  DioUITests
//
//  Created by hello on 2019/10/26.
//  Copyright © 2019 Dio. All rights reserved.
//

//参考文章:https://www.jianshu.com/p/91241f9cf4a1
#import <XCTest/XCTest.h>

@interface DioUITests : XCTestCase

@end

@implementation DioUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // UI tests must launch the application that they test.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];
    
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.

    XCUIElement *nameTF = app.textFields[@"input your name"];
    [nameTF tap];
    [nameTF typeText:@"Dio"];
    XCUIElement *passwordTF = app.secureTextFields[@"input your passwords"];
    [passwordTF tap];
    [passwordTF typeText:@"123456"];
    XCUIElement *loginButton = app.buttons[@"login"];
    [loginButton tap];
    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    
    /* 下面的代码是 根据真实的点击事件自动生成的测试代码 */
//    XCUIElement *inputYourNameTextField = app.textFields[@"input your name"];
//    [inputYourNameTextField tap];
//    [app/*@START_MENU_TOKEN@*/.buttons[@"shift"]/*[[".keyboards.buttons[@\"shift\"]",".buttons[@\"shift\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
//
//    XCUIElement *dKey = app/*@START_MENU_TOKEN@*/.keys[@"D"]/*[[".keyboards.keys[@\"D\"]",".keys[@\"D\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
//    [dKey tap];
//    [app/*@START_MENU_TOKEN@*/.keys[@"i"]/*[[".keyboards.keys[@\"i\"]",".keys[@\"i\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
//
//    XCUIElement *oKey = app/*@START_MENU_TOKEN@*/.keys[@"o"]/*[[".keyboards.keys[@\"o\"]",".keys[@\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
//    [oKey tap];
//    [app.secureTextFields[@"input your passwords"] tap];
//
//    XCUIElement *moreKey = app/*@START_MENU_TOKEN@*/.keys[@"more"]/*[[".keyboards",".keys[@\"more, numbers\"]",".keys[@\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/;
//    [moreKey tap];
//    [app/*@START_MENU_TOKEN@*/.keys[@"1"]/*[[".keyboards.keys[@\"1\"]",".keys[@\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
//    [app/*@START_MENU_TOKEN@*/.keys[@"2"]/*[[".keyboards.keys[@\"2\"]",".keys[@\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
//    [app/*@START_MENU_TOKEN@*/.keys[@"3"]/*[[".keyboards.keys[@\"3\"]",".keys[@\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
//    [app/*@START_MENU_TOKEN@*/.keys[@"4"]/*[[".keyboards.keys[@\"4\"]",".keys[@\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
//    [app/*@START_MENU_TOKEN@*/.keys[@"5"]/*[[".keyboards.keys[@\"5\"]",".keys[@\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
//
//    XCUIElement *key = app/*@START_MENU_TOKEN@*/.keys[@"6"]/*[[".keyboards.keys[@\"6\"]",".keys[@\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
//    [key tap];
//    [app.buttons[@"login"] tap];
//    [[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
}


- (void)testLaunchPerformance {
    if (@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)) {
        // This measures how long it takes to launch your application.
        [self measureWithMetrics:@[XCTOSSignpostMetric.applicationLaunchMetric] block:^{
            [[[XCUIApplication alloc] init] launch];
        }];
    }
}

@end
