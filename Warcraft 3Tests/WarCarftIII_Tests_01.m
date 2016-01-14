//
//  WarCarftIII_Tests.m
//  WarCarftIII Tests
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Footman.h"


@interface Footman()
- (int)healthPoints;
- (int)attackPower;
@end

@interface WarCarftIII_Tests_01 : XCTestCase

@end

@implementation WarCarftIII_Tests_01 {
    Footman *_footman;
}

- (void)setUp {
    [super setUp];
    _footman = [Footman new];
}

- (void)tearDown {
    [super tearDown];
    _footman = nil;
}

// Units that can fight, such as the Footman, have both healthPoints points to indicate their healthPoints and attack power to indicate how much damage they deal to other units
// As such, they must start off with a certain amount of each


- (void)testHasAndKnowItshealthPoints
{
    int result = _footman.healthPoints;
    int expected = 60;
    XCTAssertEqual((int)expected, (int)result, @"footman should have and know its HP (Health Points)");
}

- (void)testHasAndKnowItsAttackPower
{
    int result = _footman.attackPower;
    int expected = 10;
    XCTAssertEqual((int)expected, (int)result, @"footman should have and know its AP (Attack Power)");
}
@end