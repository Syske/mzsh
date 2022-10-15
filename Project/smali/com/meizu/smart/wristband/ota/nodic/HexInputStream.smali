.class public Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;
.super Ljava/io/FilterInputStream;
.source "HexInputStream.java"


# instance fields
.field private final LINE_LENGTH:I

.field private final MBRSize:I

.field private available:I

.field private bytesRead:I

.field private lastAddress:I

.field private final localBuf:[B

.field private localPos:I

.field private pos:I

.field private size:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mbrSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x80

    .line 67
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->LINE_LENGTH:I

    .line 68
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localBuf:[B

    .line 69
    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localPos:I

    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localBuf:[B

    array-length v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->size:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->lastAddress:I

    .line 72
    iput p2, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->MBRSize:I

    .line 74
    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->calculateBinSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->available:I

    .line 75
    return-void
.end method

.method protected constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "mbrSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x80

    .line 78
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->LINE_LENGTH:I

    .line 79
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localBuf:[B

    .line 80
    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localPos:I

    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localBuf:[B

    array-length v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->size:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->lastAddress:I

    .line 83
    iput p2, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->MBRSize:I

    .line 85
    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->calculateBinSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->available:I

    .line 86
    return-void
.end method

.method private asciiToInt(I)I
    .locals 1
    .param p1, "ascii"    # I

    .prologue
    .line 340
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    .line 341
    add-int/lit8 v0, p1, -0x37

    .line 345
    :goto_0
    return v0

    .line 343
    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    .line 344
    add-int/lit8 v0, p1, -0x30

    goto :goto_0

    .line 345
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private calculateBinSize(I)I
    .locals 12
    .param p1, "mbrSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "binSize":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->in:Ljava/io/InputStream;

    .line 91
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    .line 94
    const/4 v4, 0x0

    .line 97
    .local v4, "lastBaseAddress":I
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 99
    .local v0, "b":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->checkComma(I)V

    .line 101
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v5

    .line 102
    .local v5, "lineSize":I
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readAddress(Ljava/io/InputStream;)I

    move-result v8

    .line 103
    .local v8, "offset":I
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v9

    .line 104
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    .line 137
    :cond_0
    :goto_1
    :pswitch_0
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/io/InputStream;->skip(J)J

    .line 142
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 144
    const/16 v10, 0xa

    if-eq v0, v10, :cond_1

    const/16 v10, 0xd

    if-eq v0, v10, :cond_1

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :goto_3
    return v1

    .line 114
    :pswitch_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readAddress(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 115
    .local v7, "newULBA":I
    if-lez v1, :cond_2

    shr-int/lit8 v10, v4, 0x10

    add-int/lit8 v10, v10, 0x1

    if-eq v7, v10, :cond_2

    .line 150
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    .line 117
    :cond_2
    shl-int/lit8 v4, v7, 0x10

    .line 118
    const-wide/16 v10, 0x2

    :try_start_2
    invoke-virtual {v2, v10, v11}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 150
    .end local v0    # "b":I
    .end local v5    # "lineSize":I
    .end local v7    # "newULBA":I
    .end local v8    # "offset":I
    .end local v9    # "type":I
    :catchall_0
    move-exception v10

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    throw v10

    .line 123
    .restart local v0    # "b":I
    .restart local v5    # "lineSize":I
    .restart local v8    # "offset":I
    .restart local v9    # "type":I
    :pswitch_3
    :try_start_3
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readAddress(Ljava/io/InputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    shl-int/lit8 v6, v10, 0x4

    .line 124
    .local v6, "newSBA":I
    if-lez v1, :cond_3

    shr-int/lit8 v10, v6, 0x10

    shr-int/lit8 v11, v4, 0x10

    add-int/lit8 v11, v11, 0x1

    if-eq v10, v11, :cond_3

    .line 150
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    .line 126
    :cond_3
    move v4, v6

    .line 127
    const-wide/16 v10, 0x2

    :try_start_4
    invoke-virtual {v2, v10, v11}, Ljava/io/InputStream;->skip(J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 132
    .end local v6    # "newSBA":I
    :pswitch_4
    add-int v3, v4, v8

    .line 133
    .local v3, "lastAddress":I
    if-lt v3, p1, :cond_0

    .line 134
    add-int/2addr v1, v5

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private checkComma(I)V
    .locals 2
    .param p1, "comma"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;
        }
    .end annotation

    .prologue
    .line 324
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    .line 325
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;

    const-string v1, "Not a HEX file"

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    return-void
.end method

.method private readAddress(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private readByte(Ljava/io/InputStream;)I
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->asciiToInt(I)I

    move-result v0

    .line 330
    .local v0, "first":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->asciiToInt(I)I

    move-result v1

    .line 332
    .local v1, "second":I
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    return v2
.end method

.method private readLine()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, -0x1

    const-wide/16 v12, 0x2

    const/4 v7, 0x0

    .line 227
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    if-ne v8, v14, :cond_0

    move v4, v7

    .line 311
    :goto_0
    return v4

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->in:Ljava/io/InputStream;

    .line 238
    .local v3, "in":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 239
    .local v1, "b":I
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 241
    const/16 v8, 0xa

    if-eq v1, v8, :cond_1

    const/16 v8, 0xd

    if-eq v1, v8, :cond_1

    .line 255
    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->checkComma(I)V

    .line 256
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v4

    .line 257
    .local v4, "lineSize":I
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 258
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readAddress(Ljava/io/InputStream;)I

    move-result v5

    .line 259
    .local v5, "offset":I
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 260
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v6

    .line 261
    .local v6, "type":I
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 264
    packed-switch v6, :pswitch_data_0

    .line 297
    :pswitch_0
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    int-to-long v8, v8

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 300
    :cond_2
    :goto_1
    if-nez v6, :cond_1

    .line 303
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localBuf:[B

    array-length v8, v8

    if-ge v2, v8, :cond_5

    if-ge v2, v4, :cond_5

    .line 304
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readByte(Ljava/io/InputStream;)I

    move-result v1

    .line 305
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 306
    iget-object v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localBuf:[B

    int-to-byte v9, v1

    aput-byte v9, v8, v2

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 267
    .end local v2    # "i":I
    :pswitch_1
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->lastAddress:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->MBRSize:I

    if-ge v8, v9, :cond_2

    .line 268
    const/4 v6, -0x1

    .line 269
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    int-to-long v8, v8

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    goto :goto_1

    .line 274
    :pswitch_2
    iput v14, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    move v4, v7

    .line 275
    goto/16 :goto_0

    .line 278
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readAddress(Ljava/io/InputStream;)I

    move-result v8

    shl-int/lit8 v0, v8, 0x4

    .line 279
    .local v0, "address":I
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 280
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->bytesRead:I

    if-lez v8, :cond_3

    shr-int/lit8 v8, v0, 0x10

    iget v9, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->lastAddress:I

    shr-int/lit8 v9, v9, 0x10

    add-int/lit8 v9, v9, 0x1

    if-eq v8, v9, :cond_3

    move v4, v7

    .line 281
    goto/16 :goto_0

    .line 282
    :cond_3
    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->lastAddress:I

    .line 283
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    int-to-long v8, v8

    invoke-virtual {v3, v12, v13}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    goto :goto_1

    .line 288
    .end local v0    # "address":I
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readAddress(Ljava/io/InputStream;)I

    move-result v0

    .line 289
    .restart local v0    # "address":I
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 290
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->bytesRead:I

    if-lez v8, :cond_4

    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->lastAddress:I

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x1

    if-eq v0, v8, :cond_4

    move v4, v7

    .line 291
    goto/16 :goto_0

    .line 292
    :cond_4
    shl-int/lit8 v8, v0, 0x10

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->lastAddress:I

    .line 293
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    int-to-long v8, v8

    invoke-virtual {v3, v12, v13}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    goto/16 :goto_1

    .line 308
    .end local v0    # "address":I
    .restart local v2    # "i":I
    :cond_5
    iget v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    int-to-long v8, v8

    invoke-virtual {v3, v12, v13}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 309
    iput v7, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localPos:I

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->available:I

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->bytesRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please, use readPacket() method instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readPacket([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please, use readPacket() method instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readPacket([B)I
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "i":I
    :cond_0
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 168
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localPos:I

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->size:I

    if-ge v2, v3, :cond_1

    .line 169
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localBuf:[B

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localPos:I

    aget-byte v2, v2, v3

    aput-byte v2, p1, v0

    move v0, v1

    .line 170
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 173
    :cond_1
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->bytesRead:I

    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->readLine()I

    move-result v3

    iput v3, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->size:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->bytesRead:I

    .line 174
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->size:I

    if-nez v2, :cond_0

    .line 177
    :cond_2
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->pos:I

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->bytesRead:I

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->localPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sizeInBytes()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->available:I

    return v0
.end method

.method public sizeInPackets(I)I
    .locals 3
    .param p1, "packetSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->sizeInBytes()I

    move-result v0

    .line 215
    .local v0, "sizeInBytes":I
    div-int v2, v0, p1

    rem-int v1, v0, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
