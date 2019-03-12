//
//  TestScene.m
//  Asn2
//
//  Created by Renz on 3/11/19.
//  Copyright © 2019 Renz. All rights reserved.
//

#import "TestScene.h"

//#import "RWMushroom.h"

@implementation TestScene {
    //RWMushroom* _mushroom;
}

- (instancetype)initWithShader:(GLKBaseEffect *)shader {
    if ((self = [super initWithName:"RWTestScene" shader:shader vertices:nil vertexCount:0])) {
        
        //_mushroom = [[RWMushroom alloc] initWithShader:shader];
        //[self.children addObject:_mushroom];
        
        self.position = GLKVector3Make(0, -1, -10);
        
    }
    return self;
}

@end
