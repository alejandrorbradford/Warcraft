//
//  WarCarftIII_Test_07.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 6/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Footman.h"
#import "Unit.h"

@interface Footman()
- (void)damage:(int)damage;
- (int)healthPoints;
- (void)attack:(Unit *)enemy withDamage:(int)damage;
@end

@interface Unit()
- (instancetype)initWithHP:(int)hp AP:(int)ap;
- (int)healthPoints;
@end

@interface WarCarftIII_Tests_07 : XCTestCase

@end

@implementation WarCarftIII_Tests_07
{
    Footman *_footman;
    Unit *_unit;
}

- (void)setUp {
	[super setUp];
	_footman = [Footman new];
    _unit = [[Unit alloc] initWithHP:50 AP:5];
}

- (void)tearDown {
	[super tearDown];
	_footman = nil;
}

// A Footman should be able to attack other units as well as receive damage

-(void)testDamageShouldReduceTheUnithealthPointsBy
{
    [_footman damage:4];
    int result = [_footman healthPoints];
    int expected = 56;
    XCTAssertEqual(expected,result);
}

-(void)testAttackShouldDoDeal10APDamageToTheEnemyUnit
{
    [_footman attack:_unit withDamage:10];
    int result = [_unit healthPoints];
    int expected = 40;
    XCTAssertEqual(expected,result);

}


@end
