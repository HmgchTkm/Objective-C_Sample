//
//  ResponseModel.h
//  AFNetworkSample
//
//  Created by TakeomiHamaguchi on 2016/08/12.
//  Copyright © 2016年 TakeomiHamaguchi. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface ResponseModel : MTLModel<MTLJSONSerializing>
@property NSString *question;
@property NSString *published_at;
@end
