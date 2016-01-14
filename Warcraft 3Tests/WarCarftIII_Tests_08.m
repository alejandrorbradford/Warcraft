//
//  WarCarftIII_Tests_08.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 6/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Peasant.h"
#import "Unit.h"

@interface Peasant()
- (int)healthPoints;
- (int)attackPower;
@end

@interface WarCarftIII_Tests_08 : XCTestCase

@end

@implementation WarCarftIII_Tests_08{
    Peasant *_peasant;
}

- (void)setUp {
    [super setUp];
    _peasant = [Peasant new];
}

- (void)tearDown {
    [super tearDown];
    _peasant = nil;
}

// Peasants are also units, but they are not soldiers like Footman are
// These guys have other duties like mining for resources (let's not worry about that for now)
// For our intents and purposes, Peasants are just another Unit which have lower HP and no AP (they can't attack other units)

-(void)testpeasantShouldBeAUnit
{
    XCTAssertTrue([_peasant isKindOfClass:[Unit class]], @"Peasant should be a kind of unit");
}

-(void)testHasAndKnowsItsHPWhichIsLowerThanThatOfAFootman
{
    int result = _peasant.healthPoints;
    int expected = 35;
    XCTAssertEqual((int)expected, (int)result, @"Peasant HP should default to 35");
}

-(void)testCantDamageOtherUnitsNoAttackPower
{
    int result = _peasant.attackPower;
    int expected = 0;
    XCTAssertEqual((int)expected, (int)result, @"Peasant AP should be 0");

}
@end
