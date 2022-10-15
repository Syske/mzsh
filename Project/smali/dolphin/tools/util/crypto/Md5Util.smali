.class public Ldolphin/tools/util/crypto/Md5Util;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final encrypt([B)Ljava/lang/String;
    .locals 9
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 9
    const/16 v8, 0x10

    new-array v0, v8, [C

    fill-array-data v0, :array_0

    .line 14
    .local v0, "arrayOfChar1":[C
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 15
    .local v6, "localMessageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    array-length v2, p0

    .line 17
    .local v2, "i":I
    mul-int/lit8 v8, v2, 0x2

    new-array v1, v8, [C

    .line 21
    .local v1, "arrayOfChar2":[C
    const/4 v3, 0x0

    .line 22
    .local v3, "j":I
    const/4 v5, 0x0

    .local v5, "k":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    if-lt v5, v2, :cond_0

    .line 27
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([C)V

    .line 29
    .end local v1    # "arrayOfChar2":[C
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "localMessageDigest":Ljava/security/MessageDigest;
    :goto_1
    return-object v8

    .line 23
    .restart local v1    # "arrayOfChar2":[C
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v6    # "localMessageDigest":Ljava/security/MessageDigest;
    :cond_0
    aget-byte v7, p0, v5

    .line 24
    .local v7, "m":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v7, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v0, v8

    aput-char v8, v1, v4

    .line 25
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    and-int/lit8 v8, v7, 0xf

    aget-char v8, v0, v8

    aput-char v8, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "arrayOfChar2":[C
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "localMessageDigest":Ljava/security/MessageDigest;
    .end local v7    # "m":I
    :catch_0
    move-exception v8

    .line 29
    const/4 v8, 0x0

    goto :goto_1

    .line 9
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
