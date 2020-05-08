//
//  ASRSAEncryptionManager.h
//  RSA加密——非openssl
//
//  Created by Mac on 2020/5/8.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASRSAEncryptionManager : NSObject


/// 加密方法
/// @param string 需要加密的字符串
/// @param path '.der' 格式的公钥文件路径
+ (NSString*)encryptString:(NSString*)string publicKeyWithContentsOfFile:(NSString*)path;


/// 解密方法
/// @param string 需要解密的字符串
/// @param path '.p12' 格式的私钥文件路径
/// @param password 私钥文件密码
+ (NSString*)decryptString:(NSString*)string privateKeyWithContentsOfFile:(NSString*)path password:(NSString*)password;


/// 加密方法
/// @param string 需要加密的字符串
/// @param pubKey 公钥字符串
+ (NSString*)encryptString:(NSString*)string publicKey:(NSString*)pubKey;


/// 解密方法
/// @param string 需要解密的字符串
/// @param privacy 私钥字符串
+ (NSString*)decryptString:(NSString*)string privateKey:(NSString*)privacy;


@end

NS_ASSUME_NONNULL_END
