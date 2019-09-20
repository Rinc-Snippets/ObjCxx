//
//  RLManager.m
//  WrapCxxDataInterface
//
//  Created by Rinc Liu on 19/9/2019.
//  Copyright © 2019 RINC. All rights reserved.
//

#import "RLManager.h"
#import "Manager.hxx"

@interface RLManager() {
    Manager* m;
}
@end

@implementation RLManager

-(instancetype)initWithCxx:(void*)cxx {
    if (self = [super initWithCxx:cxx]) {
        m = (Manager*)cxx;
    }
    return self;
}

-(void*)cxx {
    return m;
}

-(void)dealloc {
    delete m;
}

-(void)work {
    m->work();
}

@end
