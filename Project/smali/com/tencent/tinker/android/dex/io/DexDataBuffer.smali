.class public Lcom/tencent/tinker/android/dex/io/DexDataBuffer;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/android/dex/util/ByteInput;
.implements Lcom/tencent/tinker/android/dex/util/ByteOutput;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x200

.field private static final EMPTY_SHORT_ARRAY:[S


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private dataBound:I

.field private isResizeAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->EMPTY_SHORT_ARRAY:[S

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    .line 61
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 63
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->isResizeAllowed:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    .line 69
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->isResizeAllowed:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "isResizeAllowed"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 78
    iput-boolean p2, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->isResizeAllowed:Z

    .line 79
    return-void
.end method

.method private ensureBufferSize(I)V
    .locals 4
    .param p1, "bytes"    # I

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 95
    iget-boolean v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->isResizeAllowed:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 97
    array-length v1, v0

    add-int/2addr v1, p1

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 98
    iget-object v2, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 100
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    .line 101
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    :cond_0
    return-void
.end method

.method private findCatchHandlerIndex([Lcom/tencent/tinker/android/dex/Code$CatchHandler;I)I
    .locals 2
    .param p1, "catchHandlers"    # [Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    .param p2, "offset"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 287
    aget-object v1, p1, v0

    .line 288
    iget v1, v1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->offset:I

    if-ne v1, p2, :cond_0

    .line 289
    return v0

    .line 286
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private getBytesFrom(I)[B
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 438
    sub-int/2addr v0, p1

    new-array v0, v0, [B

    .line 439
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 440
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 441
    return-object v0
.end method

.method private readCatchHandler(I)Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readSleb128()I

    move-result v1

    .line 297
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 298
    new-array v3, v2, [I

    .line 299
    new-array v4, v2, [I

    .line 300
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v5

    aput v5, v3, v0

    .line 302
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v5

    aput v5, v4, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v0

    .line 305
    :goto_1
    new-instance v1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    invoke-direct {v1, v3, v4, v0, p1}, Lcom/tencent/tinker/android/dex/Code$CatchHandler;-><init>([I[III)V

    return-object v1

    .line 304
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private readCatchHandlers()[Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 264
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v2

    .line 265
    new-array v3, v2, [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    .line 266
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 267
    iget-object v4, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v1

    .line 268
    invoke-direct {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readCatchHandler(I)Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    move-result-object v4

    aput-object v4, v3, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return-object v3
.end method

.method private readFields(I)[Lcom/tencent/tinker/android/dex/ClassData$Field;
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 410
    new-array v2, p1, [Lcom/tencent/tinker/android/dex/ClassData$Field;

    move v1, v0

    .line 412
    :goto_0
    if-ge v0, p1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    add-int/2addr v1, v3

    .line 414
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    .line 415
    new-instance v4, Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {v4, v1, v3}, Lcom/tencent/tinker/android/dex/ClassData$Field;-><init>(II)V

    aput-object v4, v2, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    return-object v2
.end method

.method private readMethods(I)[Lcom/tencent/tinker/android/dex/ClassData$Method;
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 421
    new-array v2, p1, [Lcom/tencent/tinker/android/dex/ClassData$Method;

    move v1, v0

    .line 423
    :goto_0
    if-ge v0, p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    add-int/2addr v1, v3

    .line 425
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    .line 426
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v4

    .line 427
    new-instance v5, Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {v5, v1, v3, v4}, Lcom/tencent/tinker/android/dex/ClassData$Method;-><init>(III)V

    aput-object v5, v2, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    return-object v2
.end method

.method private readTries(I[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[Lcom/tencent/tinker/android/dex/Code$Try;
    .locals 6
    .param p1, "triesSize"    # I
    .param p2, "catchHandlers"    # [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    .prologue
    .line 274
    new-array v1, p1, [Lcom/tencent/tinker/android/dex/Code$Try;

    .line 275
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    .line 277
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v3

    .line 278
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v4

    .line 279
    invoke-direct {p0, p2, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->findCatchHandlerIndex([Lcom/tencent/tinker/android/dex/Code$CatchHandler;I)I

    move-result v4

    .line 280
    new-instance v5, Lcom/tencent/tinker/android/dex/Code$Try;

    invoke-direct {v5, v2, v3, v4}, Lcom/tencent/tinker/android/dex/Code$Try;-><init>(III)V

    aput-object v5, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-object v1
.end method

.method private writeCatchHandler(Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V
    .locals 6
    .param p1, "catchHandler"    # Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    .prologue
    const/4 v5, -0x1

    .line 746
    iget v1, p1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->catchAllAddress:I

    .line 747
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->typeIndexes:[I

    .line 748
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->addresses:[I

    .line 750
    if-eq v1, v5, :cond_0

    .line 751
    array-length v0, v2

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeSleb128(I)V

    .line 756
    :goto_0
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 757
    aget v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 758
    aget v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 753
    :cond_0
    array-length v0, v2

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeSleb128(I)V

    goto :goto_0

    .line 761
    :cond_1
    if-eq v1, v5, :cond_2

    .line 762
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 764
    :cond_2
    return-void
.end method

.method private writeCatchHandlers([Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[I
    .locals 4
    .param p1, "catchHandlers"    # [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 736
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 737
    array-length v0, p1

    new-array v2, v0, [I

    .line 738
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 739
    iget-object v3, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v1

    aput v3, v2, v0

    .line 740
    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeCatchHandler(Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_0
    return-object v2
.end method

.method private writeFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)V
    .locals 5
    .param p1, "fields"    # [Lcom/tencent/tinker/android/dex/ClassData$Field;

    .prologue
    const/4 v0, 0x0

    .line 816
    .line 817
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 818
    iget v4, v3, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    sub-int v1, v4, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 819
    iget v1, v3, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    .line 820
    iget v3, v3, Lcom/tencent/tinker/android/dex/ClassData$Field;->accessFlags:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_0
    return-void
.end method

.method private writeMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)V
    .locals 5
    .param p1, "methods"    # [Lcom/tencent/tinker/android/dex/ClassData$Method;

    .prologue
    const/4 v0, 0x0

    .line 825
    .line 826
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 827
    iget v4, v3, Lcom/tencent/tinker/android/dex/ClassData$Method;->methodIndex:I

    sub-int v1, v4, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 828
    iget v1, v3, Lcom/tencent/tinker/android/dex/ClassData$Method;->methodIndex:I

    .line 829
    iget v4, v3, Lcom/tencent/tinker/android/dex/ClassData$Method;->accessFlags:I

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 830
    iget v3, v3, Lcom/tencent/tinker/android/dex/ClassData$Method;->codeOffset:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_0
    return-void
.end method

.method private writeTries([Lcom/tencent/tinker/android/dex/Code$Try;[I)V
    .locals 4
    .param p1, "tries"    # [Lcom/tencent/tinker/android/dex/Code$Try;
    .param p2, "catchHandlerOffsets"    # [I

    .prologue
    .line 767
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 768
    iget v3, v2, Lcom/tencent/tinker/android/dex/Code$Try;->startAddress:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 769
    iget v3, v2, Lcom/tencent/tinker/android/dex/Code$Try;->instructionCount:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 770
    iget v2, v2, Lcom/tencent/tinker/android/dex/Code$Try;->catchHandlerIndex:I

    aget v2, p2, v2

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    :cond_0
    return-void
.end method


# virtual methods
.method public alignToFourBytes()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 529
    return-void
.end method

.method public alignToFourBytesWithZeroFill()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/SizeOf;->roundToTimesOfFour(I)I

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    .line 537
    :goto_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le v0, v1, :cond_1

    .line 541
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 543
    :cond_1
    return-void
.end method

.method public array()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    new-array v0, v0, [B

    .line 110
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 111
    iget v2, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-object v0
.end method

.method public available()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public position()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-void
.end method

.method public readAnnotation()Lcom/tencent/tinker/android/dex/Annotation;
    .locals 6

    .prologue
    .line 445
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 446
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByte()B

    move-result v1

    .line 447
    iget-object v2, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 448
    new-instance v3, Lcom/tencent/tinker/android/dex/EncodedValueReader;

    const/16 v4, 0x1d

    invoke-direct {v3, p0, v4}, Lcom/tencent/tinker/android/dex/EncodedValueReader;-><init>(Lcom/tencent/tinker/android/dex/util/ByteInput;I)V

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->skipValue()V

    .line 449
    new-instance v3, Lcom/tencent/tinker/android/dex/Annotation;

    new-instance v4, Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-direct {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->getBytesFrom(I)[B

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/tencent/tinker/android/dex/EncodedValue;-><init>(I[B)V

    invoke-direct {v3, v0, v1, v4}, Lcom/tencent/tinker/android/dex/Annotation;-><init>(IBLcom/tencent/tinker/android/dex/EncodedValue;)V

    return-object v3
.end method

.method public readAnnotationSet()Lcom/tencent/tinker/android/dex/AnnotationSet;
    .locals 5

    .prologue
    .line 453
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 454
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    .line 455
    new-array v3, v2, [I

    .line 456
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/AnnotationSet;

    invoke-direct {v0, v1, v3}, Lcom/tencent/tinker/android/dex/AnnotationSet;-><init>(I[I)V

    return-object v0
.end method

.method public readAnnotationSetRefList()Lcom/tencent/tinker/android/dex/AnnotationSetRefList;
    .locals 5

    .prologue
    .line 463
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 464
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    .line 465
    new-array v3, v2, [I

    .line 466
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;

    invoke-direct {v0, v1, v3}, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;-><init>(I[I)V

    return-object v0
.end method

.method public readAnnotationsDirectory()Lcom/tencent/tinker/android/dex/AnnotationsDirectory;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 473
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 474
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    .line 475
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    .line 476
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v5

    .line 477
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v7

    .line 479
    filled-new-array {v4, v11}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move v0, v6

    .line 480
    :goto_0
    if-ge v0, v4, :cond_0

    .line 482
    aget-object v8, v3, v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v9

    aput v9, v8, v6

    .line 484
    aget-object v8, v3, v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v9

    aput v9, v8, v10

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    filled-new-array {v5, v11}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    move v0, v6

    .line 488
    :goto_1
    if-ge v0, v5, :cond_1

    .line 490
    aget-object v8, v4, v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v9

    aput v9, v8, v6

    .line 492
    aget-object v8, v4, v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v9

    aput v9, v8, v10

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    :cond_1
    filled-new-array {v7, v11}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    move v0, v6

    .line 496
    :goto_2
    if-ge v0, v7, :cond_2

    .line 498
    aget-object v8, v5, v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v9

    aput v9, v8, v6

    .line 500
    aget-object v8, v5, v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v9

    aput v9, v8, v10

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 503
    :cond_2
    new-instance v0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;-><init>(II[[I[[I[[I)V

    return-object v0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readByteArray(I)[B
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 137
    new-array v0, p1, [B

    .line 138
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 139
    return-object v0
.end method

.method public readClassData()Lcom/tencent/tinker/android/dex/ClassData;
    .locals 6

    .prologue
    .line 397
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 398
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v0

    .line 399
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    .line 400
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v4

    .line 401
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v5

    .line 402
    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readFields(I)[Lcom/tencent/tinker/android/dex/ClassData$Field;

    move-result-object v2

    .line 403
    invoke-direct {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readFields(I)[Lcom/tencent/tinker/android/dex/ClassData$Field;

    move-result-object v3

    .line 404
    invoke-direct {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readMethods(I)[Lcom/tencent/tinker/android/dex/ClassData$Method;

    move-result-object v4

    .line 405
    invoke-direct {p0, v5}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readMethods(I)[Lcom/tencent/tinker/android/dex/ClassData$Method;

    move-result-object v5

    .line 406
    new-instance v0, Lcom/tencent/tinker/android/dex/ClassData;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/android/dex/ClassData;-><init>(I[Lcom/tencent/tinker/android/dex/ClassData$Field;[Lcom/tencent/tinker/android/dex/ClassData$Field;[Lcom/tencent/tinker/android/dex/ClassData$Method;[Lcom/tencent/tinker/android/dex/ClassData$Method;)V

    return-object v0
.end method

.method public readClassDef()Lcom/tencent/tinker/android/dex/ClassDef;
    .locals 10

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->position()I

    move-result v1

    .line 213
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    .line 214
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v3

    .line 215
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    .line 216
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v5

    .line 217
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v6

    .line 218
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v7

    .line 219
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v8

    .line 220
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v9

    .line 221
    new-instance v0, Lcom/tencent/tinker/android/dex/ClassDef;

    invoke-direct/range {v0 .. v9}, Lcom/tencent/tinker/android/dex/ClassDef;-><init>(IIIIIIIII)V

    return-object v0
.end method

.method public readCode()Lcom/tencent/tinker/android/dex/Code;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 227
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v2

    .line 229
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v3

    .line 230
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v4

    .line 231
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v0

    .line 232
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v5

    .line 233
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v6

    .line 234
    invoke-virtual {p0, v6}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShortArray(I)[S

    move-result-object v6

    .line 237
    if-lez v0, :cond_1

    .line 238
    array-length v7, v6

    rem-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    .line 247
    :cond_0
    iget-object v7, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 248
    mul-int/lit8 v8, v0, 0x8

    invoke-virtual {p0, v8}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->skip(I)V

    .line 249
    invoke-direct {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readCatchHandlers()[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    move-result-object v8

    .line 250
    iget-object v9, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 251
    iget-object v10, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 252
    invoke-direct {p0, v0, v8}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readTries(I[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[Lcom/tencent/tinker/android/dex/Code$Try;

    move-result-object v7

    .line 253
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 258
    :goto_0
    new-instance v0, Lcom/tencent/tinker/android/dex/Code;

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tinker/android/dex/Code;-><init>(IIIII[S[Lcom/tencent/tinker/android/dex/Code$Try;[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V

    return-object v0

    .line 255
    :cond_1
    new-array v7, v8, [Lcom/tencent/tinker/android/dex/Code$Try;

    .line 256
    new-array v8, v8, [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    goto :goto_0
.end method

.method public readDebugInfoItem()Lcom/tencent/tinker/android/dex/DebugInfoItem;
    .locals 7

    .prologue
    .line 309
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 311
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v4

    .line 312
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    .line 313
    new-array v5, v1, [I

    .line 314
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v2

    aput v2, v5, v0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    const/4 v2, 0x0

    .line 321
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    :try_start_1
    new-instance v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer$1;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer$1;-><init>(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/io/ByteArrayOutputStream;)V

    .line 334
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByte()B

    move-result v2

    .line 335
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 383
    :pswitch_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 384
    new-instance v2, Lcom/tencent/tinker/android/dex/DebugInfoItem;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/tencent/tinker/android/dex/DebugInfoItem;-><init>(II[I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    if-eqz v1, :cond_2

    .line 388
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 384
    :cond_2
    :goto_2
    return-object v2

    .line 341
    :pswitch_2
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v2

    .line 342
    invoke-static {v0, v2}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 386
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 388
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 391
    :cond_3
    :goto_4
    throw v0

    .line 346
    :pswitch_3
    :try_start_5
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readSleb128()I

    move-result v2

    .line 347
    invoke-static {v0, v2}, Lcom/tencent/tinker/android/dex/Leb128;->writeSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_1

    .line 352
    :pswitch_4
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v6

    .line 353
    invoke-static {v0, v6}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    .line 354
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v6

    .line 355
    invoke-static {v0, v6}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    .line 356
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v6

    .line 357
    invoke-static {v0, v6}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    .line 358
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v2

    .line 360
    invoke-static {v0, v2}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_1

    .line 366
    :pswitch_5
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v2

    .line 367
    invoke-static {v0, v2}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_1

    .line 371
    :pswitch_6
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v2

    .line 372
    invoke-static {v0, v2}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_4

    .line 386
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public readEncodedArray()Lcom/tencent/tinker/android/dex/EncodedValue;
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 508
    new-instance v1, Lcom/tencent/tinker/android/dex/EncodedValueReader;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/EncodedValueReader;-><init>(Lcom/tencent/tinker/android/dex/util/ByteInput;I)V

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->skipValue()V

    .line 509
    new-instance v1, Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->getBytesFrom(I)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/EncodedValue;-><init>(I[B)V

    return-object v1
.end method

.method public readFieldId()Lcom/tencent/tinker/android/dex/FieldId;
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 189
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v1

    .line 190
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v2

    .line 191
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v3

    .line 192
    new-instance v4, Lcom/tencent/tinker/android/dex/FieldId;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/FieldId;-><init>(IIII)V

    return-object v4
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readMethodId()Lcom/tencent/tinker/android/dex/MethodId;
    .locals 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 197
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v1

    .line 198
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v2

    .line 199
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v3

    .line 200
    new-instance v4, Lcom/tencent/tinker/android/dex/MethodId;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/MethodId;-><init>(IIII)V

    return-object v4
.end method

.method public readProtoId()Lcom/tencent/tinker/android/dex/ProtoId;
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 205
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    .line 206
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    .line 207
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v3

    .line 208
    new-instance v4, Lcom/tencent/tinker/android/dex/ProtoId;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/ProtoId;-><init>(IIII)V

    return-object v4
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readShortArray(I)[S
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 144
    sget-object v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->EMPTY_SHORT_ARRAY:[S

    .line 150
    :cond_0
    return-object v0

    .line 146
    :cond_1
    new-array v0, p1, [S

    .line 147
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readSleb128()I
    .locals 1

    .prologue
    .line 162
    invoke-static {p0}, Lcom/tencent/tinker/android/dex/Leb128;->readSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readStringData()Lcom/tencent/tinker/android/dex/StringData;
    .locals 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    .line 169
    new-array v2, v1, [C

    invoke-static {p0, v2}, Lcom/tencent/tinker/android/dex/Mutf8;->decode(Lcom/tencent/tinker/android/dex/util/ByteInput;[C)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 171
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Declared length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " doesn\'t match decoded length of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    invoke-direct {v1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 174
    :cond_0
    :try_start_1
    new-instance v1, Lcom/tencent/tinker/android/dex/StringData;

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/StringData;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method public readTypeList()Lcom/tencent/tinker/android/dex/TypeList;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 182
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    .line 183
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShortArray(I)[S

    move-result-object v1

    .line 184
    new-instance v2, Lcom/tencent/tinker/android/dex/TypeList;

    invoke-direct {v2, v0, v1}, Lcom/tencent/tinker/android/dex/TypeList;-><init>(I[S)V

    return-object v2
.end method

.method public readUleb128()I
    .locals 1

    .prologue
    .line 154
    invoke-static {p0}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readUleb128p1()I
    .locals 1

    .prologue
    .line 158
    invoke-static {p0}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public skip(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 513
    if-gez p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 517
    return-void
.end method

.method public skipWithAutoExpand(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 520
    mul-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->skip(I)V

    .line 522
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 579
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    .line 580
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 581
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 584
    :cond_0
    return-void
.end method

.method public write([S)V
    .locals 3
    .param p1, "shorts"    # [S

    .prologue
    .line 587
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    .line 588
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-short v2, p1, v0

    .line 589
    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le v0, v1, :cond_1

    .line 592
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 594
    :cond_1
    return-void
.end method

.method public writeAnnotation(Lcom/tencent/tinker/android/dex/Annotation;)I
    .locals 2
    .param p1, "annotation"    # Lcom/tencent/tinker/android/dex/Annotation;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 841
    iget-byte v1, p1, Lcom/tencent/tinker/android/dex/Annotation;->visibility:B

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeByte(I)V

    .line 842
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeEncodedArray(Lcom/tencent/tinker/android/dex/EncodedValue;)I

    .line 843
    return v0
.end method

.method public writeAnnotationSet(Lcom/tencent/tinker/android/dex/AnnotationSet;)I
    .locals 5
    .param p1, "annotationSet"    # Lcom/tencent/tinker/android/dex/AnnotationSet;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 853
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->annotationOffsets:[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 854
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->annotationOffsets:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 855
    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_0
    return v1
.end method

.method public writeAnnotationSetRefList(Lcom/tencent/tinker/android/dex/AnnotationSetRefList;)I
    .locals 5
    .param p1, "annotationSetRefList"    # Lcom/tencent/tinker/android/dex/AnnotationSetRefList;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 867
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->annotationSetRefItems:[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 868
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->annotationSetRefItems:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 869
    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_0
    return v1
.end method

.method public writeAnnotationsDirectory(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)I
    .locals 8
    .param p1, "annotationsDirectory"    # Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 880
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 881
    iget v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->classAnnotationsOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 882
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 883
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 884
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 886
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 887
    aget v6, v5, v1

    invoke-virtual {p0, v6}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 888
    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_0
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 892
    aget v6, v5, v1

    invoke-virtual {p0, v6}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 893
    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 896
    :cond_1
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 897
    aget v6, v5, v1

    invoke-virtual {p0, v6}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 898
    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 900
    :cond_2
    return v2
.end method

.method public writeByte(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 547
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    .line 548
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 549
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 552
    :cond_0
    return-void
.end method

.method public writeClassData(Lcom/tencent/tinker/android/dex/ClassData;)I
    .locals 2
    .param p1, "classData"    # Lcom/tencent/tinker/android/dex/ClassData;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 804
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->staticFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 805
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->instanceFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 806
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->directMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 807
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->virtualMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 808
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->staticFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)V

    .line 809
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->instanceFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)V

    .line 810
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->directMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)V

    .line 811
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->virtualMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)V

    .line 812
    return v0
.end method

.method public writeClassDef(Lcom/tencent/tinker/android/dex/ClassDef;)I
    .locals 2
    .param p1, "classDef"    # Lcom/tencent/tinker/android/dex/ClassDef;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 687
    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->typeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 688
    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->accessFlags:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 689
    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->supertypeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 690
    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->interfacesOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 691
    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->sourceFileIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 692
    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->annotationsOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 693
    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 694
    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->staticValuesOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 695
    return v0
.end method

.method public writeCode(Lcom/tencent/tinker/android/dex/Code;)I
    .locals 5
    .param p1, "code"    # Lcom/tencent/tinker/android/dex/Code;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 705
    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->registersSize:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 706
    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->insSize:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 707
    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->outsSize:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 708
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 709
    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->debugInfoOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 710
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 711
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([S)V

    .line 713
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 714
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    array-length v1, v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 715
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 724
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->skipWithAutoExpand(I)V

    .line 725
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    invoke-direct {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeCatchHandlers([Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[I

    move-result-object v2

    .line 726
    iget-object v3, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 727
    iget-object v4, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 728
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    invoke-direct {p0, v1, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeTries([Lcom/tencent/tinker/android/dex/Code$Try;[I)V

    .line 729
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 731
    :cond_1
    return v0
.end method

.method public writeDebugInfoItem(Lcom/tencent/tinker/android/dex/DebugInfoItem;)I
    .locals 4
    .param p1, "debugInfoItem"    # Lcom/tencent/tinker/android/dex/DebugInfoItem;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 782
    iget v0, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 784
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    array-length v2, v0

    .line 785
    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 787
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 788
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    aget v3, v3, v0

    .line 789
    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128p1(I)V

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    .line 794
    return v1
.end method

.method public writeEncodedArray(Lcom/tencent/tinker/android/dex/EncodedValue;)I
    .locals 2
    .param p1, "encodedValue"    # Lcom/tencent/tinker/android/dex/EncodedValue;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 910
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    .line 911
    return v0
.end method

.method public writeFieldId(Lcom/tencent/tinker/android/dex/FieldId;)I
    .locals 2
    .param p1, "fieldId"    # Lcom/tencent/tinker/android/dex/FieldId;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 648
    iget v1, p1, Lcom/tencent/tinker/android/dex/FieldId;->declaringClassIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 649
    iget v1, p1, Lcom/tencent/tinker/android/dex/FieldId;->typeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 650
    iget v1, p1, Lcom/tencent/tinker/android/dex/FieldId;->nameIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 651
    return v0
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 571
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    .line 572
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 573
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 576
    :cond_0
    return-void
.end method

.method public writeMethodId(Lcom/tencent/tinker/android/dex/MethodId;)I
    .locals 2
    .param p1, "methodId"    # Lcom/tencent/tinker/android/dex/MethodId;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 661
    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 662
    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    .line 663
    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->nameIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 664
    return v0
.end method

.method public writeProtoId(Lcom/tencent/tinker/android/dex/ProtoId;)I
    .locals 2
    .param p1, "protoId"    # Lcom/tencent/tinker/android/dex/ProtoId;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 674
    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->shortyIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 675
    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->returnTypeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 676
    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->parametersOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 677
    return v0
.end method

.method public writeShort(S)V
    .locals 2
    .param p1, "i"    # S

    .prologue
    .line 555
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    .line 556
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 557
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    .line 560
    :cond_0
    return-void
.end method

.method public writeSleb128(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 605
    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/Leb128;->writeSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    .line 606
    return-void
.end method

.method public writeStringData(Lcom/tencent/tinker/android/dex/StringData;)I
    .locals 2
    .param p1, "stringData"    # Lcom/tencent/tinker/android/dex/StringData;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 616
    :try_start_0
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 617
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 618
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Mutf8;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    .line 619
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    return v0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public writeTypeList(Lcom/tencent/tinker/android/dex/TypeList;)I
    .locals 5
    .param p1, "typeList"    # Lcom/tencent/tinker/android/dex/TypeList;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 633
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/TypeList;->types:[S

    .line 634
    array-length v0, v2

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    .line 635
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-short v4, v2, v0

    .line 636
    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_0
    return v1
.end method

.method public writeUleb128(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 597
    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    .line 598
    return-void
.end method

.method public writeUleb128p1(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 601
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    .line 602
    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 563
    int-to-short v0, p1

    .line 564
    const v1, 0xffff

    and-int/2addr v1, v0

    if-eq p1, v1, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an unsigned short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    .line 568
    return-void
.end method
