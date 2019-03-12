//
//  PNode.h
//  Asn2
//
//  Created by Renz on 3/11/19.
//  Copyright © 2019 Renz. All rights reserved.
//

#import "Node.h"
//#include "btBulletDynamicsCommon.h"

NS_ASSUME_NONNULL_BEGIN

#define kBallTag    1
#define kBrickTag   2
#define kPaddleTag  3
#define kBorderTag  4
#define kPanzerTag  5
#define kFloorTag   6
#define kTankerTag  7
#define kMyCubeTag  8

@interface PNode : Node

- (instancetype)initWithName:(char *)name
                        mass:(float)mass
                      convex:(BOOL)convex
                         tag:(int)tag
                      shader:(BaseEffect *)shader
                    vertices:(Vertex *)vertices
                 vertexCount:(unsigned int)vertexCount
                 textureName:(NSString *)textureName
              specularColour:(GLKVector4)specularColour
               diffuseColour:(GLKVector4)diffuseColour
                   shininess:(float)shininess;

//∫@property (nonatomic, readonly) btRigidBody* body;
@property (nonatomic, assign) int tag;

@end

NS_ASSUME_NONNULL_END
