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
    
    /* 以下是自己获取控件生成的点击事件 */
    //获取tabbarItem
    XCUIElement *tabbar = app.tabBars.allElementsBoundByIndex[0];
    XCUIElementQuery *tabbarItems = [tabbar childrenMatchingType:XCUIElementTypeButton];
    XCUIElement *page0 = [tabbarItems elementBoundByIndex:0];
    XCUIElement *page1 = [tabbarItems elementBoundByIndex:1];
    XCUIElement *page2 = [tabbarItems elementBoundByIndex:2];
    XCUIElement *page3 = [tabbarItems elementBoundByIndex:3];
    //点击
    [NSThread sleepForTimeInterval:2];//等告待2秒,便于观察效果
    [page1 tap];
    NSLog(@"page1 is tapped");
    [NSThread sleepForTimeInterval:2];//等告待2秒,便于观察效果
    [page2 tap];
    NSLog(@"page2 is tapped");
    [NSThread sleepForTimeInterval:2];//等告待2秒,便于观察效果
    [page3 tap];
    NSLog(@"page3 is tapped");
    [NSThread sleepForTimeInterval:2];//等告待2秒,便于观察效果
    [page0 tap];
    NSLog(@"page0 is tapped");
    [NSThread sleepForTimeInterval:2];//等告待2秒,便于观察效果
    
    //tabeView
    XCUIElement *tableView = [app.tables elementBoundByIndex:0];
    [tableView swipeDown];
    
    //tableViewCell
    XCUIElement *tableViewCell = [tableView.cells elementBoundByIndex:0];
    [tableViewCell tap];
    
    XCUIElement *nameTF = app.textFields[@"input your name"];
    [nameTF tap];
    [nameTF typeText:@"Dio"];
    XCUIElement *passwordTF = app.secureTextFields[@"input your passwords"];
    [passwordTF tap];
    [passwordTF typeText:@"123456"];
    XCUIElement *loginButton = app.buttons[@"login"];
    [loginButton tap];
    [[[[[[[[[[[[XCUIApplication alloc] init] childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther] elementBoundByIndex:1] childrenMatchingType:XCUIElementTypeOther] elementBoundByIndex:1] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    
    
    /* 下面的代码是 根据真实的点击事件自动生成的测试代码 */
    //    XCUIElementQuery *tabBarsQuery = app.tabBars;
    //    [NSThread sleepForTimeInterval:3];
    //    [tabBarsQuery.buttons[@"other"] tap];
    //    [NSThread sleepForTimeInterval:3];
    //    NSLog(@"other is taped");
    //    [tabBarsQuery.buttons[@"language"] tap];
    //    NSLog(@"language is taped");
    //
    //    XCUIElementQuery *tablesQuery = app.tables;
    //    [tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"First Test"]/*[[".cells.staticTexts[@\"First Test\"]",".staticTexts[@\"First Test\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    //
    //    [app.textFields[@"input your name"] tap];
    //    [app/*@START_MENU_TOKEN@*/.buttons[@"shift"]/*[[".keyboards.buttons[@\"shift\"]",".buttons[@\"shift\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    //
    //    XCUIElement *dKey = app/*@START_MENU_TOKEN@*/.keys[@"D"]/*[[".keyboards.keys[@\"D\"]",".keys[@\"D\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [dKey tap];
    //
    //    XCUIElement *iKey = app/*@START_MENU_TOKEN@*/.keys[@"i"]/*[[".keyboards.keys[@\"i\"]",".keys[@\"i\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [iKey tap];
    //
    //    XCUIElement *oKey = app/*@START_MENU_TOKEN@*/.keys[@"o"]/*[[".keyboards.keys[@\"o\"]",".keys[@\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [oKey tap];
    //    [app.secureTextFields[@"input your passwords"] tap];
    //
    //    XCUIElement *moreKey = app/*@START_MENU_TOKEN@*/.keys[@"more"]/*[[".keyboards",".keys[@\"numbers\"]",".keys[@\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/;
    //    [moreKey tap];
    //
    //    XCUIElement *key = app/*@START_MENU_TOKEN@*/.keys[@"1"]/*[[".keyboards.keys[@\"1\"]",".keys[@\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [key tap];
    //
    //    XCUIElement *key2 = app/*@START_MENU_TOKEN@*/.keys[@"2"]/*[[".keyboards.keys[@\"2\"]",".keys[@\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [key2 tap];
    //
    //    XCUIElement *key3 = app/*@START_MENU_TOKEN@*/.keys[@"3"]/*[[".keyboards.keys[@\"3\"]",".keys[@\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [key3 tap];
    //
    //    XCUIElement *key4 = app/*@START_MENU_TOKEN@*/.keys[@"4"]/*[[".keyboards.keys[@\"4\"]",".keys[@\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [key4 tap];
    //
    //    XCUIElement *key5 = app/*@START_MENU_TOKEN@*/.keys[@"5"]/*[[".keyboards.keys[@\"5\"]",".keys[@\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [key5 tap];
    //
    //    XCUIElement *key6 = app/*@START_MENU_TOKEN@*/.keys[@"6"]/*[[".keyboards.keys[@\"6\"]",".keys[@\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    //    [key6 tap];
    //    [app.buttons[@"login"] tap];
    //    [[[[[[[[[[[[XCUIApplication alloc] init] childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther] elementBoundByIndex:1] childrenMatchingType:XCUIElementTypeOther] elementBoundByIndex:1] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    //
    //    [app.navigationBars[@"First Test"].buttons[@"language"] tap];
    //    [tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"This is line 0 row"]/*[[".cells.staticTexts[@\"This is line 0 row\"]",".staticTexts[@\"This is line 0 row\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    //    [app.navigationBars[@"This is line 0 row"].buttons[@"language"] tap];
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
