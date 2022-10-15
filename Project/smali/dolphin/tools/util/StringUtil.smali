.class public Ldolphin/tools/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "localStringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 30
    :cond_0
    const/4 v4, 0x0

    .line 41
    :goto_0
    return-object v4

    .line 32
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-lt v0, v4, :cond_2

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 35
    :cond_2
    aget-byte v4, p0, v0

    and-int/lit16 v1, v4, 0xff

    .local v1, "j":I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 37
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 61
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 57
    :cond_1
    return-object v0

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 51
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 52
    .local v1, "hexChars":[C
    new-array v0, v3, [B

    .line 53
    .local v0, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 54
    mul-int/lit8 v4, v2, 0x2

    .line 55
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Ldolphin/tools/util/StringUtil;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Ldolphin/tools/util/StringUtil;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 8
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    if-nez v0, :cond_1

    .line 16
    .end local v0    # "i":I
    :cond_0
    :goto_0
    return v2

    .line 11
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    const/4 v2, 0x0

    goto :goto_0

    .line 11
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isRational(Ljava/lang/String;)Z
    .locals 2
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe6

    if-gt v0, v1, :cond_0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 10
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 67
    .local v1, "i":I
    if-le p1, v1, :cond_1

    .line 68
    new-array v0, v7, [Ljava/lang/String;

    aput-object p0, v0, v6

    .line 81
    .local v0, "arrayOfString":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 71
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    :cond_1
    div-int v8, v1, p1

    .line 72
    rem-int v9, v1, p1

    if-nez v9, :cond_3

    .line 71
    :goto_0
    add-int v2, v8, v6

    .local v2, "j":I
    new-array v0, v2, [Ljava/lang/String;

    .line 74
    .restart local v0    # "arrayOfString":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 76
    mul-int v4, v3, p1

    .local v4, "m":I
    add-int v5, v4, p1

    .line 77
    .local v5, "n":I
    if-le v5, v1, :cond_2

    move v5, v1

    .end local v5    # "n":I
    :cond_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v2    # "j":I
    .end local v3    # "k":I
    .end local v4    # "m":I
    :cond_3
    move v6, v7

    .line 72
    goto :goto_0
.end method

.method public static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I

    .prologue
    .line 86
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
