.class public Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;
.super Ljava/lang/Exception;
.source "UnknownResponseException.java"


# static fields
.field private static final HEX_ARRAY:[C

.field private static final serialVersionUID:J = -0x78f5e5eeb8bf3699L


# instance fields
.field private final mExpectedOpCode:I

.field private final mResponse:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->HEX_ARRAY:[C

    return-void

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # [B
    .param p3, "expectedOpCode"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    if-eqz p2, :cond_0

    .end local p2    # "response":[B
    :goto_0
    iput-object p2, p0, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->mResponse:[B

    .line 36
    iput p3, p0, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->mExpectedOpCode:I

    .line 37
    return-void

    .line 35
    .restart local p2    # "response":[B
    :cond_0
    const/4 v0, 0x0

    new-array p2, v0, [B

    goto :goto_0
.end method

.method public static bytesToHex([BII)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 45
    if-eqz p0, :cond_0

    array-length v4, p0

    if-le v4, p1, :cond_0

    if-gtz p2, :cond_1

    .line 46
    :cond_0
    const-string v4, ""

    .line 55
    :goto_0
    return-object v4

    .line 48
    :cond_1
    array-length v4, p0

    sub-int/2addr v4, p1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 49
    .local v2, "maxLength":I
    mul-int/lit8 v4, v2, 0x2

    new-array v0, v4, [C

    .line 50
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 51
    add-int v4, p1, v1

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 52
    .local v3, "v":I
    mul-int/lit8 v4, v1, 0x2

    sget-object v5, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 53
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->HEX_ARRAY:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v3    # "v":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 41
    const-string v0, "%s (response: %s, expected: 0x10%02X..)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->mResponse:[B

    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->mResponse:[B

    array-length v4, v4

    invoke-static {v3, v5, v4}, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->bytesToHex([BII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->mExpectedOpCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
