.class public final Lcom/google/zxing/pdf417/PDF417Reader;
.super Ljava/lang/Object;
.source "PDF417Reader.java"

# interfaces
.implements Lcom/google/zxing/Reader;
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)[Lcom/google/zxing/Result;
    .locals 14
    .param p0, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v13, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    invoke-static/range {p0 .. p2}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    move-result-object v8

    .line 88
    .local v8, "detectorResult":Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/google/zxing/ResultPoint;

    .line 89
    .local v11, "points":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v1, v11, v1

    const/4 v2, 0x5

    aget-object v2, v11, v2

    const/4 v3, 0x6

    aget-object v3, v11, v3

    const/4 v4, 0x7

    aget-object v4, v11, v4

    invoke-static {v11}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinCodewordWidth([Lcom/google/zxing/ResultPoint;)I

    move-result v5

    invoke-static {v11}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxCodewordWidth([Lcom/google/zxing/ResultPoint;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;

    move-result-object v7

    .line 91
    .local v7, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    if-nez v7, :cond_0

    .line 92
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 94
    :cond_0
    new-instance v12, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v1

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v12, v0, v1, v11, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 95
    .local v12, "result":Lcom/google/zxing/Result;
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    .line 97
    .local v10, "pdf417ResultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    if-eqz v10, :cond_1

    .line 98
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v12, v0, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 100
    :cond_1
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v7    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v10    # "pdf417ResultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .end local v11    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v12    # "result":Lcom/google/zxing/Result;
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/Result;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/Result;

    return-object v0
.end method

.method private static getMaxCodewordWidth([Lcom/google/zxing/ResultPoint;)I
    .locals 4
    .param p0, "p"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 120
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    div-int/lit8 v2, v2, 0x12

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 2
    .param p0, "p1"    # Lcom/google/zxing/ResultPoint;
    .param p1, "p2"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 106
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static getMinCodewordWidth([Lcom/google/zxing/ResultPoint;)I
    .locals 4
    .param p0, "p"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 128
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    div-int/lit8 v2, v2, 0x12

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 2
    .param p0, "p1"    # Lcom/google/zxing/ResultPoint;
    .param p1, "p2"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 114
    :cond_0
    const v0, 0x7fffffff

    .line 116
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v2, 0x0

    .line 61
    invoke-static {p1, p2, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)[Lcom/google/zxing/Result;

    move-result-object v0

    .line 62
    .local v0, "result":[Lcom/google/zxing/Result;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    if-nez v1, :cond_1

    .line 63
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 65
    :cond_1
    aget-object v1, v0, v2

    return-object v1
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 2
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p2, v1}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)[Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ignored":Lcom/google/zxing/FormatException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 79
    .end local v0    # "ignored":Lcom/google/zxing/FormatException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "ignored":Lcom/google/zxing/ChecksumException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
