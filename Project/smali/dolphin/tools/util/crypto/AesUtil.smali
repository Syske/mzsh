.class public Ldolphin/tools/util/crypto/AesUtil;
.super Ljava/lang/Object;
.source "AesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([B[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "paramArrayOfByte1"    # [B
    .param p1, "paramArrayOfByte2"    # [B
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 48
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v3

    .line 52
    :cond_1
    :try_start_0
    array-length v4, p1

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 55
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 56
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AES/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 57
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 58
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :try_start_1
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 65
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_1
    move-exception v1

    .line 66
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static ecbDecrypt([B[B)[B
    .locals 1
    .param p0, "paramArrayOfByte1"    # [B
    .param p1, "paramArrayOfByte2"    # [B

    .prologue
    .line 37
    const-string v0, "PKCS5Padding"

    invoke-static {p0, p1, v0}, Ldolphin/tools/util/crypto/AesUtil;->ecbDecrypt([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ecbDecrypt([B[BLjava/lang/String;)[B
    .locals 1
    .param p0, "paramArrayOfByte1"    # [B
    .param p1, "paramArrayOfByte2"    # [B
    .param p2, "paramString"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "ECB"

    invoke-static {p0, p1, v0, p2}, Ldolphin/tools/util/crypto/AesUtil;->decrypt([B[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ecbEncrypt([B[B)[B
    .locals 1
    .param p0, "paramArrayOfByte1"    # [B
    .param p1, "paramArrayOfByte2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    const-string v0, "PKCS5Padding"

    invoke-static {p0, p1, v0}, Ldolphin/tools/util/crypto/AesUtil;->ecbEncrypt([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ecbEncrypt([B[BLjava/lang/String;)[B
    .locals 1
    .param p0, "paramArrayOfByte1"    # [B
    .param p1, "paramArrayOfByte2"    # [B
    .param p2, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    const-string v0, "ECB"

    invoke-static {p0, p1, v0, p2}, Ldolphin/tools/util/crypto/AesUtil;->encrypt([B[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([B[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "paramArrayOfByte1"    # [B
    .param p1, "paramArrayOfByte2"    # [B
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 20
    if-nez p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-object v2

    .line 24
    :cond_1
    array-length v3, p1

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 27
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 28
    .local v1, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AES/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 30
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 32
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    goto :goto_0
.end method
