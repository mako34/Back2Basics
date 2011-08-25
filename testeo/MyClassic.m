//
//  MyClassic.m
//  testeo
//
//  Created by  on 25/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyClassic.h"

@implementation MyClassic

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
    
    
}


+(void) pongalo {
    NSLog(@"puch");
}

+(int) numero {
    return 34;
}

+(void) suma1: (int) nuro1 {
    NSLog(@"entro : %d",nuro1);
}

+(int) sumatoria: (int) dig1 :(int)dig2 {
    
    int x = dig1 + dig2;
    return x; 
}



@end
