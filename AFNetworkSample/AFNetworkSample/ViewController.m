//
//  ViewController.m
//  AFNetworkSample
//
//  Created by TakeomiHamaguchi on 2016/08/12.
//  Copyright © 2016年 TakeomiHamaguchi. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "ResponseModel.h"
#import <Mantle/Mantle.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *outputView;

@end

@implementation ViewController

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)tappedBtn:(UIButton *)sender {
  
  // HTTPリクエスト先のURL
  // Apiary側で リクエストを受け付けたらJSONデータをレスポンスされるようになっている
  NSString *url = @"https://private-139a2-hoge8.apiary-mock.com/questions";
  
  // AFNetworking の AFHTTPSessionManager の インスタンス化
  AFHTTPSessionManager *afHttpMng = [AFHTTPSessionManager manager];
  
  // HTTPリクエスト(GET)
  [afHttpMng
    GET:url
    parameters:nil
    progress:nil
    success:
        ^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseJson)
        {
          // 成功時の処理
          NSLog(@"%@",responseJson);
          
          NSError *mantleErr;
          
          // Mantleで JSON→modelオブジェクトへの変換
          ResponseModel *responseModel =[MTLJSONAdapter
                              modelOfClass:ResponseModel.class
                              fromJSONDictionary:responseJson
                                         error:&mantleErr
          ];

          // エラー処理
          if(mantleErr != nil){
            NSLog(@"エラー概要：%@",mantleErr.localizedDescription);
          }
          
          // model の値を 画面のoutputViewへ出力
          self.outputView.text = responseModel.question;
          self.outputView.text = [self.outputView.text stringByAppendingString:responseModel.published_at];
     
     
   } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
     // リクエスト失敗時
     NSLog(@"エラー概要：%@",error.localizedDescription);
     NSLog(@"エラー理由：%@",error.localizedFailureReason);
     NSLog(@"回復方法：%@",error.localizedRecoverySuggestion);
     NSLog(@"%@",@"失敗だぜ");
   }];
  
}

@end
