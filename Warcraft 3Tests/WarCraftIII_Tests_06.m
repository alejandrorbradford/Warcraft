//
//  WarCraft_Tests_06.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Footman.h"
#import "Unit.h"

@interface WarCraftIII_Tests_06 : XCTestCase

@end

@implementation WarCraftIII_Tests_06{
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

// Since a Footman is a type of Unit, it makes sense to now make Footman inherit from Unit
// Refactor Footman class, now that it is inheriting functionality (code) from the Unit class.

-(void)testFootmanShouldBeAUnit
{
    XCTAssertTrue([_footman isKindOfClass:[Unit class]], @"footman should be a kind of unit");
}

@end
