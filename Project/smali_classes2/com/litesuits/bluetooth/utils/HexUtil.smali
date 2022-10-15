.class public Lcom/litesuits/bluetooth/utils/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# static fields
.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 15
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/litesuits/bluetooth/utils/HexUtil;->DIGITS_LOWER:[C

    .line 21
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/litesuits/bluetooth/utils/HexUtil;->DIGITS_UPPER:[C

    return-void

    .line 15
    nop

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

    .line 21
    :array_1
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex([C)[B
    .locals 7
    .param p0, "data"    # [C

    .prologue
    .line 116
    array-length v3, p0

    .line 118
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 119
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Odd number of characters."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 122
    :cond_0
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 125
    .local v4, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 126
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/litesuits/bluetooth/utils/HexUtil;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 127
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 128
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/litesuits/bluetooth/utils/HexUtil;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "f":I
    :cond_1
    return-object v4
.end method

.method public static encodeHex([B)[C
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/litesuits/bluetooth/utils/HexUtil;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    sget-object v0, Lcom/litesuits/bluetooth/utils/HexUtil;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/litesuits/bluetooth/utils/HexUtil;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/litesuits/bluetooth/utils/HexUtil;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 58
    array-length v3, p0

    .line 59
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 61
    .local v4, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 62
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v2

    .line 63
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v4
.end method

.method public static encodeHexStr([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/litesuits/bluetooth/utils/HexUtil;->encodeHexStr([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHexStr([BZ)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_0

    sget-object v0, Lcom/litesuits/bluetooth/utils/HexUtil;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/litesuits/bluetooth/utils/HexUtil;->encodeHexStr([B[C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/litesuits/bluetooth/utils/HexUtil;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method protected static encodeHexStr([B[C)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 102
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/litesuits/bluetooth/utils/HexUtil;->encodeHex([B[C)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 157
    const-string v2, "\u5f85\u8f6c\u6362\u5b57\u7b26\u4e32"

    .line 158
    .local v2, "srcStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/litesuits/bluetooth/utils/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "encodeStr":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lcom/litesuits/bluetooth/utils/HexUtil;->decodeHex([C)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 160
    .local v0, "decodeStr":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8f6c\u6362\u524d\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8f6c\u6362\u540e\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fd8\u539f\u540e\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I

    .prologue
    .line 148
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 149
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    return v0
.end method
