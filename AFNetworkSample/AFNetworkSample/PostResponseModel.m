//
//  PostResponseModel.m
//  AFNetworkSample
//
//  Created by asc153 on 2016/10/09.
//  Copyright © 2016年 TakeomiHamaguchi. All rights reserved.
//

#import "PostResponseModel.h"

@implementation PostResponseModel

+(NSDictionary *)JSONKeyPathsByPropertyKey{
  return @{
          @"choices":@"choices",
          @"votes":@"votes"
          };
}
@end
