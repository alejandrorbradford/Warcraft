//
//  WarCraftIII_Tests_05.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Unit.h"

@interface Unit()
- (instancetype)initWithHP:(int)hp AP:(int)ap;
- (void)setHealthPoints:(int)hp;
- (int)healthPoints;
@end

@interface WarCraftIII_Tests_05 : XCTestCase

@end

@implementation WarCraftIII_Tests_05

// A unit is a common term in strategy games like Warcraft 3 and it stands for a soldier or person that performs a task of some kind. A footman is just one of many "units" that a barracks can train.
// So let's use inheritence. First we'll introduce a new class called `Unit`.
// The Unit is an abstract idea and thus it needs to be told what the HP and AP for the unit will be
// Since all units have healthPoints, the HP related stuff can be migrated/moved into the Unit class instead.


-(void)testUnitRequiredHPandAPInsteadOfDefaulting
{
    BOOL result = [[Unit alloc] respondsToSelector:@selector(initWithHP:AP:)];
    XCTAssertTrue(result, @"requires HP and AP");
}

-(void)testhealthPointsCanNotBeSet
{
    BOOL result = [[Unit alloc] respondsToSelector:@selector(setHealthPoints:)];
    XCTAssertTrue(result, @"healthPoints points should be able to be set");
}

-(void)testhealthPointsCanBeSet
{
    Unit *unit = [[Unit alloc] initWithHP:30 AP:5];
    int result = unit.healthPoints;
    int expected = 30;
    XCTAssertEqual((int)expected, (int)result);
}

@end
