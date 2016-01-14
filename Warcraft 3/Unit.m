//
//  Unit.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Unit.h"
#import "Footman.h"
@implementation Unit
- (instancetype)init
{
    self = [super init];
    if (self) {
        _healthPoints = 60;
        _attackPower = 10;
    }
    return self;
}


-(Unit *)initWithHP:(int)hp AP:(int)ap {
   
    self = [super init];
    if (self) {
        _healthPoints = hp;
        _attackPower = ap;
    }
    return self;
    
}

- (void)damage:(int)damage {
    _healthPoints = (_healthPoints) - damage;
}


- (void)attack:(Unit *)enemy withDamage:(int)damage {

    
   
    enemy.healthPoints = enemy.healthPoints - damage;
    
    
}
@end
