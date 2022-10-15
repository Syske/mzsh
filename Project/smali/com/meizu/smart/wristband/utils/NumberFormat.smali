.class public Lcom/meizu/smart/wristband/utils/NumberFormat;
.super Ljava/lang/Object;
.source "NumberFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BToH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/utils/NumberFormat;->toD(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "b":Ljava/lang/String;
    return-object v0
.end method

.method public static formatting(Ljava/lang/String;)I
    .locals 3
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    move v0, v1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const-string v2, "a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    const/16 v0, 0xa

    .line 35
    :cond_2
    const-string v2, "b"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    const/16 v0, 0xb

    .line 38
    :cond_3
    const-string v2, "c"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    const/16 v0, 0xc

    .line 41
    :cond_4
    const-string v2, "d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42
    const/16 v0, 0xd

    .line 44
    :cond_5
    const-string v2, "e"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    const/16 v0, 0xe

    .line 47
    :cond_6
    const-string v2, "f"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 48
    const/16 v0, 0xf

    .line 50
    :cond_7
    return v0
.end method

.method public static toD(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # I

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 18
    int-to-double v2, v1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/NumberFormat;->formatting(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, p1

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
