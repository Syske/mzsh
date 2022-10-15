.class public Lcom/meizu/smart/wristband/ota/suota/data/File;
.super Ljava/lang/Object;
.source "File.java"


# instance fields
.field private blocks:[[[B

.field private bytes:[B

.field private bytesAvailable:I

.field private chunksPerBlockCount:I

.field private crc:B

.field private fileBlockSize:I

.field private inputStream:Ljava/io/InputStream;

.field private numberOfBlocks:I

.field private totalChunkCount:I

.field private type:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->fileBlockSize:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->numberOfBlocks:I

    .line 33
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->inputStream:Ljava/io/InputStream;

    .line 34
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytesAvailable:I

    .line 35
    return-void
.end method

.method public static getByFileName(Ljava/lang/String;)Lcom/meizu/smart/wristband/ota/suota/data/File;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-direct {v1, v0}, Lcom/meizu/smart/wristband/ota/suota/data/File;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method private getCrc()B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "crc_code":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytesAvailable:I

    if-ge v2, v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    aget-byte v4, v4, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 161
    .local v0, "byteValue":Ljava/lang/Byte;
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v3

    .line 162
    .local v3, "intVal":I
    xor-int v4, v1, v3

    int-to-byte v1, v4

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "byteValue":Ljava/lang/Byte;
    .end local v3    # "intVal":I
    :cond_0
    const-string v4, "crc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%#10x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v1
.end method

.method private initBlocks()V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/data/File;->initBlocksSuota()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/data/File;->initBlocksSpota()V

    goto :goto_0
.end method

.method private initBlocksSpota()V
    .locals 8

    .prologue
    .line 106
    const/4 v4, 0x1

    iput v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->numberOfBlocks:I

    .line 107
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v4, v4

    iput v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->fileBlockSize:I

    .line 108
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v4, v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->totalChunkCount:I

    .line 109
    iget v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->numberOfBlocks:I

    iget v5, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->totalChunkCount:I

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const-class v5, [B

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[B

    iput-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->blocks:[[[B

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "byteOffset":I
    const/16 v2, 0x14

    .line 112
    .local v2, "chunkSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->totalChunkCount:I

    if-ge v3, v4, :cond_1

    .line 113
    add-int/lit8 v4, v0, 0x14

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 114
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v4, v4

    sub-int v2, v4, v0

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    add-int v5, v0, v2

    invoke-static {v4, v0, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 117
    .local v1, "chunk":[B
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->blocks:[[[B

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v1, v4, v3

    .line 118
    add-int/lit8 v0, v0, 0x14

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "chunk":[B
    :cond_1
    return-void
.end method

.method private initBlocksSuota()V
    .locals 14

    .prologue
    .line 68
    const/4 v8, 0x0

    .line 69
    .local v8, "totalChunkCounter":I
    iget v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->numberOfBlocks:I

    new-array v9, v9, [[[B

    iput-object v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->blocks:[[[B

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "byteOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->numberOfBlocks:I

    if-ge v5, v9, :cond_4

    .line 73
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->fileBlockSize:I

    .line 74
    .local v0, "blockSize":I
    add-int/lit8 v9, v5, 0x1

    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->numberOfBlocks:I

    if-ne v9, v10, :cond_0

    .line 75
    iget-object v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v9, v9

    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->fileBlockSize:I

    rem-int v0, v9, v10

    .line 77
    :cond_0
    int-to-double v10, v0

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 78
    .local v7, "numberOfChunksInBlock":I
    const/4 v3, 0x0

    .line 79
    .local v3, "chunkNumber":I
    iget-object v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->blocks:[[[B

    new-array v10, v7, [[B

    aput-object v10, v9, v5

    .line 80
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v0, :cond_3

    .line 82
    const/16 v4, 0x14

    .line 84
    .local v4, "chunkSize":I
    add-int/lit8 v9, v1, 0x14

    iget-object v10, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v10, v10

    if-le v9, v10, :cond_2

    .line 85
    iget-object v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v9, v9

    sub-int v4, v9, v1

    .line 92
    :cond_1
    :goto_2
    const-string v9, "chunk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "total bytes: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", offset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", block: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", chunk: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", blocksize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", chunksize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    add-int v10, v1, v4

    invoke-static {v9, v1, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 94
    .local v2, "chunk":[B
    iget-object v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->blocks:[[[B

    aget-object v9, v9, v5

    aput-object v2, v9, v3

    .line 95
    add-int/2addr v1, v4

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 80
    add-int/lit8 v6, v6, 0x14

    goto :goto_1

    .line 88
    .end local v2    # "chunk":[B
    :cond_2
    add-int/lit8 v9, v6, 0x14

    if-le v9, v0, :cond_1

    .line 89
    iget v9, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->fileBlockSize:I

    rem-int/lit8 v4, v9, 0x14

    goto :goto_2

    .line 72
    .end local v4    # "chunkSize":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 101
    .end local v0    # "blockSize":I
    .end local v3    # "chunkNumber":I
    .end local v6    # "j":I
    .end local v7    # "numberOfChunksInBlock":I
    :cond_4
    iput v8, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->totalChunkCount:I

    .line 102
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBlock(I)[[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->blocks:[[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChunksPerBlockCount()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->chunksPerBlockCount:I

    return v0
.end method

.method public getFileBlockSize()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->fileBlockSize:I

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->numberOfBlocks:I

    return v0
.end method

.method public getNumberOfBytes()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public getTotalChunkCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->totalChunkCount:I

    return v0
.end method

.method public setFileBlockSize(I)V
    .locals 4
    .param p1, "fileBlockSize"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->fileBlockSize:I

    .line 62
    int-to-double v0, p1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->chunksPerBlockCount:I

    .line 63
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    array-length v0, v0

    int-to-double v0, v0

    iget v2, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->fileBlockSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->numberOfBlocks:I

    .line 64
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/data/File;->initBlocks()V

    .line 65
    return-void
.end method

.method public setType(I)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->type:I

    .line 40
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 42
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytesAvailable:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 44
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getCrc()B

    move-result v0

    iput-byte v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->crc:B

    .line 45
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytesAvailable:I

    iget-byte v2, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->crc:B

    aput-byte v2, v0, v1

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytesAvailable:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    .line 48
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/data/File;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    goto :goto_0
.end method
