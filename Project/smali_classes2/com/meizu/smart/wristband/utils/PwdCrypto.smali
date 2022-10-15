.class public Lcom/meizu/smart/wristband/utils/PwdCrypto;
.super Ljava/lang/Object;
.source "PwdCrypto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 7
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    :cond_0
    const/4 v6, 0x0

    .line 23
    :goto_0
    return-object v6

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 10
    .local v2, "buf":[B
    const/4 v1, 0x0

    .line 13
    .local v1, "algorithm":Ljava/security/MessageDigest;
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 15
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 17
    .local v3, "digest1":[B
    array-length v6, v3

    new-array v4, v6, [I

    .line 18
    .local v4, "digest1_int":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 19
    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    aput v6, v4, v5

    .line 18
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "SB1":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 22
    aget v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
