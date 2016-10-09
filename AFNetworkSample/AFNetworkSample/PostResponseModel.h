//
//  PostResponseModel.h
//  AFNetworkSample
//
//  Created by asc153 on 2016/10/09.
//  Copyright © 2016年 TakeomiHamaguchi. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface PostResponseModel : MTLModel<MTLJSONSerializing>
@property NSString *choices;
@property int votes;
@end
