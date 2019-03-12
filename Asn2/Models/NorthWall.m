//
//  NorthWall.m
//  Asn2
//
//  Created by Renz on 3/11/19.
//  Copyright © 2019 Renz. All rights reserved.
//

#import "NorthWall.h"


@implementation NorthWall

const Vertex Vertices[] = {
    // Front
    {{1, -1, 1}, {1, 0}, {0, 0, 1}}, // 0
    {{1, 1, 1}, {1, 1}, {0, 0, 1}}, // 1
    {{-1, 1, 1}, {0, 1}, {0, 0, 1}}, // 2
    
    {{-1, 1, 1}, {0, 1}, {0, 0, 1}}, // 2
    {{-1, -1, 1}, {0, 0}, {0, 0, 1}}, // 3
    {{1, -1, 1}, {1, 0}, {0, 0, 1}}, // 0
};

const GLubyte Indices[] = {
    // Front
    0, 1, 2,
    2, 3, 0
};

- (instancetype)initWithShader:(GLKBaseEffect *)shader {
    
    if ((self = [super initWithName:"square" shader:shader
                           vertices:(Vertex *)Vertices
                        vertexCount:sizeof(Vertices) / sizeof(Vertices[0])])) {
        
        self.diffuseColor = GLKVector4Make(1, 1, 1, 1);
        self.specularColor = GLKVector4Make(1, 1, 1, 1);
        self.shininess = 10;
        
        [self loadTexture:@"dungeon_01.png"];
        
    }
    return self;
}
/*
- (void)updateWithDelta:(GLfloat)aDelta {
    self.rotationZ += M_PI * aDelta;
    self.rotationY += M_PI * aDelta;
    //self.rotationX += M_PI * aDelta;
}
*/

@end
