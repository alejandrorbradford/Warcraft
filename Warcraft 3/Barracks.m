//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"

@implementation Barracks
-(instancetype)init{
    _gold = 1000;
      _food = 80;
    return self;
}

-(Footman *)trainFootman {
    
    BOOL check = [self canTrainFootman];
    if (check == YES) {
        self.gold = _gold - 135;
        self.food = _food - 2;

        return [Footman new];
    } else return nil;
    
    
}
  

    
    
   
- (BOOL)canTrainFootman {
    if ((self.gold > 134) && (self.food > 1)){
        
        return YES;
    } else return NO;
    
}

- (Peasant *)trainPeasant {
    BOOL check = [self canTrainFootman];
    if (check == YES) {
        self.gold = _gold - 90;
        self.food = _food - 5;
        return [Peasant new];
    } else return nil;
  
}


- (BOOL)canTrainPeasant {
    if ((self.gold > 90) && (self.food > 5)){
        
        return YES;
    } else return NO;

}

@end
