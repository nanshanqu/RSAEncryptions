//
//  ViewController.m
//  RSA加密——非openssl
//
//  Created by Mac on 2020/5/8.
//  Copyright © 2020 Mac. All rights reserved.
//

// 密码:acad123

#import "ViewController.h"
#import "ASRSAEncryptionManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 原始数据

    NSString *originalString = @"这是一段将要使用'.der'文件加密的字符串!";

    // 使用.der和.p12中的公钥私钥加密解密

    NSString *public_key_path = [[NSBundle mainBundle] pathForResource:@"public_key.der"ofType:nil];

    NSString *private_key_path = [[NSBundle mainBundle] pathForResource:@"private_key.p12"ofType:nil];

    NSString *encryptStr = [ASRSAEncryptionManager encryptString:originalString publicKeyWithContentsOfFile:public_key_path];
    NSLog(@"加密前:%@", originalString);

    NSLog(@"加密后:%@", encryptStr);

    NSLog(@"解密后:%@", [ASRSAEncryptionManager decryptString:encryptStr privateKeyWithContentsOfFile:private_key_path password:@"acad123"]);

}


@end
