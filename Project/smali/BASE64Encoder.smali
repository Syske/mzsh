.class public LBASE64Encoder;
.super LCharacterEncoder;
.source "BASE64Encoder.java"


# static fields
.field private static final pem_array:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, LBASE64Encoder;->pem_array:[C

    .line 72
    return-void

    .line 64
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, LCharacterEncoder;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x3

    return v0
.end method

.method protected bytesPerLine()I
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x39

    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .locals 13
    .param p1, "outputstream"    # Ljava/io/OutputStream;
    .param p2, "abyte0"    # [B
    .param p3, "i"    # I
    .param p4, "j"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_0

    .line 35
    aget-byte v1, p2, p3

    .line 36
    .local v1, "byte0":B
    const/4 v8, 0x0

    .line 37
    .local v8, "k":I
    const/4 v7, 0x0

    .line 38
    .local v7, "flag":Z
    sget-object v10, LBASE64Encoder;->pem_array:[C

    ushr-int/lit8 v11, v1, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 39
    sget-object v10, LBASE64Encoder;->pem_array:[C

    shl-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0x30

    add-int/lit8 v11, v11, 0x0

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 40
    const/16 v10, 0x3d

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 41
    const/16 v10, 0x3d

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 62
    .end local v1    # "byte0":B
    .end local v7    # "flag":Z
    .end local v8    # "k":I
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v10, 0x2

    move/from16 v0, p4

    if-ne v0, v10, :cond_1

    .line 45
    aget-byte v2, p2, p3

    .line 46
    .local v2, "byte1":B
    add-int/lit8 v10, p3, 0x1

    aget-byte v4, p2, v10

    .line 47
    .local v4, "byte3":B
    const/4 v9, 0x0

    .line 48
    .local v9, "l":I
    sget-object v10, LBASE64Encoder;->pem_array:[C

    ushr-int/lit8 v11, v2, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 49
    sget-object v10, LBASE64Encoder;->pem_array:[C

    shl-int/lit8 v11, v2, 0x4

    and-int/lit8 v11, v11, 0x30

    ushr-int/lit8 v12, v4, 0x4

    and-int/lit8 v12, v12, 0xf

    add-int/2addr v11, v12

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 50
    sget-object v10, LBASE64Encoder;->pem_array:[C

    shl-int/lit8 v11, v4, 0x2

    and-int/lit8 v11, v11, 0x3c

    add-int/lit8 v11, v11, 0x0

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 51
    const/16 v10, 0x3d

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 54
    .end local v2    # "byte1":B
    .end local v4    # "byte3":B
    .end local v9    # "l":I
    :cond_1
    aget-byte v3, p2, p3

    .line 55
    .local v3, "byte2":B
    add-int/lit8 v10, p3, 0x1

    aget-byte v5, p2, v10

    .line 56
    .local v5, "byte4":B
    add-int/lit8 v10, p3, 0x2

    aget-byte v6, p2, v10

    .line 57
    .local v6, "byte5":B
    sget-object v10, LBASE64Encoder;->pem_array:[C

    ushr-int/lit8 v11, v3, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 58
    sget-object v10, LBASE64Encoder;->pem_array:[C

    shl-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0x30

    ushr-int/lit8 v12, v5, 0x4

    and-int/lit8 v12, v12, 0xf

    add-int/2addr v11, v12

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 59
    sget-object v10, LBASE64Encoder;->pem_array:[C

    shl-int/lit8 v11, v5, 0x2

    and-int/lit8 v11, v11, 0x3c

    ushr-int/lit8 v12, v6, 0x6

    and-int/lit8 v12, v12, 0x3

    add-int/2addr v11, v12

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 60
    sget-object v10, LBASE64Encoder;->pem_array:[C

    and-int/lit8 v11, v6, 0x3f

    aget-char v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method
