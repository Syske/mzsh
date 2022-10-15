.class public Lcom/tencent/tinker/android/dx/util/IndexMap;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;
    }
.end annotation


# instance fields
.field private final annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final deletedAnnotationOffsets:Ljava/util/BitSet;

.field private final deletedAnnotationSetOffsets:Ljava/util/BitSet;

.field private final deletedAnnotationSetRefListOffsets:Ljava/util/BitSet;

.field private final deletedAnnotationsDirectoryOffsets:Ljava/util/BitSet;

.field private final deletedClassDataOffsets:Ljava/util/BitSet;

.field private final deletedCodeOffsets:Ljava/util/BitSet;

.field private final deletedDebugInfoItemOffsets:Ljava/util/BitSet;

.field private final deletedFieldIds:Ljava/util/BitSet;

.field private final deletedMethodIds:Ljava/util/BitSet;

.field private final deletedProtoIds:Ljava/util/BitSet;

.field private final deletedStaticValuesOffsets:Ljava/util/BitSet;

.field private final deletedStringIds:Ljava/util/BitSet;

.field private final deletedTypeIds:Ljava/util/BitSet;

.field private final deletedTypeListOffsets:Ljava/util/BitSet;

.field private final fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field private final typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 49
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 50
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 51
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 52
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 53
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 54
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 55
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 56
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 57
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 58
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 59
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 60
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 61
    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    .line 63
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedStringIds:Ljava/util/BitSet;

    .line 64
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedTypeIds:Ljava/util/BitSet;

    .line 65
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedProtoIds:Ljava/util/BitSet;

    .line 66
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedFieldIds:Ljava/util/BitSet;

    .line 67
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedMethodIds:Ljava/util/BitSet;

    .line 68
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedTypeListOffsets:Ljava/util/BitSet;

    .line 69
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationOffsets:Ljava/util/BitSet;

    .line 70
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationSetOffsets:Ljava/util/BitSet;

    .line 71
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationSetRefListOffsets:Ljava/util/BitSet;

    .line 72
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationsDirectoryOffsets:Ljava/util/BitSet;

    .line 73
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedStaticValuesOffsets:Ljava/util/BitSet;

    .line 74
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedClassDataOffsets:Ljava/util/BitSet;

    .line 75
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedDebugInfoItemOffsets:Ljava/util/BitSet;

    .line 76
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedCodeOffsets:Ljava/util/BitSet;

    return-void
.end method

.method private adjustCatchHandlers([Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    .locals 8
    .param p1, "catchHandlers"    # [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    .prologue
    const/4 v1, 0x0

    .line 413
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 429
    .end local p1    # "catchHandlers":[Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    :cond_0
    :goto_0
    return-object p1

    .line 416
    .restart local p1    # "catchHandlers":[Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    :cond_1
    array-length v0, p1

    new-array v2, v0, [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    move v0, v1

    .line 417
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 418
    aget-object v4, p1, v0

    .line 419
    iget-object v3, v4, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->typeIndexes:[I

    array-length v5, v3

    .line 420
    new-array v6, v5, [I

    move v3, v1

    .line 421
    :goto_2
    if-ge v3, v5, :cond_2

    .line 422
    iget-object v7, v4, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->typeIndexes:[I

    aget v7, v7, v3

    invoke-virtual {p0, v7}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v7

    aput v7, v6, v3

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 424
    :cond_2
    new-instance v3, Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    iget-object v5, v4, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->addresses:[I

    iget v7, v4, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->catchAllAddress:I

    iget v4, v4, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->offset:I

    invoke-direct {v3, v6, v5, v7, v4}, Lcom/tencent/tinker/android/dex/Code$CatchHandler;-><init>([I[III)V

    aput-object v3, v2, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v2

    .line 429
    goto :goto_0
.end method

.method private adjustDebugInfoItemSTM([B)[B
    .locals 6
    .param p1, "infoSTM"    # [B

    .prologue
    .line 473
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 475
    new-instance v1, Lcom/tencent/tinker/android/dx/util/IndexMap$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap$1;-><init>(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/io/ByteArrayInputStream;)V

    .line 482
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p1

    add-int/lit16 v3, v3, 0x200

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 484
    new-instance v3, Lcom/tencent/tinker/android/dx/util/IndexMap$2;

    invoke-direct {v3, p0, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap$2;-><init>(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/io/ByteArrayOutputStream;)V

    .line 493
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 494
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 495
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 545
    :pswitch_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 500
    :pswitch_2
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v4

    .line 501
    invoke-static {v3, v4}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_0

    .line 505
    :pswitch_3
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v4

    .line 506
    invoke-static {v3, v4}, Lcom/tencent/tinker/android/dex/Leb128;->writeSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_0

    .line 511
    :pswitch_4
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v5

    .line 512
    invoke-static {v3, v5}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    .line 514
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v5

    .line 515
    invoke-static {v3, v5}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    .line 517
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v5

    .line 518
    invoke-static {v3, v5}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    .line 520
    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 521
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v4

    .line 522
    invoke-static {v3, v4}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_0

    .line 528
    :pswitch_5
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v4

    .line 529
    invoke-static {v3, v4}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_0

    .line 533
    :pswitch_6
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v4

    .line 534
    invoke-static {v3, v4}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_0

    .line 495
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

.method private adjustFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)[Lcom/tencent/tinker/android/dex/ClassData$Field;
    .locals 5
    .param p1, "fields"    # [Lcom/tencent/tinker/android/dex/ClassData$Field;

    .prologue
    .line 433
    array-length v0, p1

    new-array v1, v0, [Lcom/tencent/tinker/android/dex/ClassData$Field;

    .line 434
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 435
    aget-object v2, p1, v0

    .line 436
    iget v3, v2, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustFieldIdIndex(I)I

    move-result v3

    .line 437
    new-instance v4, Lcom/tencent/tinker/android/dex/ClassData$Field;

    iget v2, v2, Lcom/tencent/tinker/android/dex/ClassData$Field;->accessFlags:I

    invoke-direct {v4, v3, v2}, Lcom/tencent/tinker/android/dex/ClassData$Field;-><init>(II)V

    aput-object v4, v1, v0

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-object v1
.end method

.method private adjustInstructions([S)[S
    .locals 1
    .param p1, "instructions"    # [S

    .prologue
    .line 405
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 409
    .end local p1    # "instructions":[S
    :cond_0
    :goto_0
    return-object p1

    .line 408
    .restart local p1    # "instructions":[S
    :cond_1
    new-instance v0, Lcom/tencent/tinker/android/dx/util/InstructionTransformer;

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer;-><init>(Lcom/tencent/tinker/android/dx/util/IndexMap;)V

    .line 409
    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer;->transform([S)[S

    move-result-object p1

    goto :goto_0
.end method

.method private adjustMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)[Lcom/tencent/tinker/android/dex/ClassData$Method;
    .locals 6
    .param p1, "methods"    # [Lcom/tencent/tinker/android/dex/ClassData$Method;

    .prologue
    .line 443
    array-length v0, p1

    new-array v1, v0, [Lcom/tencent/tinker/android/dex/ClassData$Method;

    .line 444
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 445
    aget-object v2, p1, v0

    .line 446
    iget v3, v2, Lcom/tencent/tinker/android/dex/ClassData$Method;->methodIndex:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustMethodIdIndex(I)I

    move-result v3

    .line 447
    iget v4, v2, Lcom/tencent/tinker/android/dex/ClassData$Method;->codeOffset:I

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustCodeOffset(I)I

    move-result v4

    .line 448
    new-instance v5, Lcom/tencent/tinker/android/dex/ClassData$Method;

    iget v2, v2, Lcom/tencent/tinker/android/dex/ClassData$Method;->accessFlags:I

    invoke-direct {v5, v3, v2, v4}, Lcom/tencent/tinker/android/dex/ClassData$Method;-><init>(III)V

    aput-object v5, v1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_0
    return-object v1
.end method

.method private adjustParameterNames([I)[I
    .locals 4
    .param p1, "parameterNames"    # [I

    .prologue
    .line 464
    array-length v1, p1

    .line 465
    new-array v2, v1, [I

    .line 466
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 467
    aget v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v3

    aput v3, v2, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-object v2
.end method


# virtual methods
.method public adjust(Lcom/tencent/tinker/android/dex/Annotation;)Lcom/tencent/tinker/android/dex/Annotation;
    .locals 6
    .param p1, "annotation"    # Lcom/tencent/tinker/android/dex/Annotation;

    .prologue
    .line 564
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    iget-object v1, v1, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 565
    new-instance v1, Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;

    new-instance v2, Lcom/tencent/tinker/android/dx/util/IndexMap$4;

    invoke-direct {v2, p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap$4;-><init>(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;-><init>(Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dex/util/ByteOutput;)V

    .line 572
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/Annotation;->getReader()Lcom/tencent/tinker/android/dex/EncodedValueReader;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;->access$100(Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    .line 573
    new-instance v1, Lcom/tencent/tinker/android/dex/Annotation;

    iget v2, p1, Lcom/tencent/tinker/android/dex/Annotation;->off:I

    iget-byte v3, p1, Lcom/tencent/tinker/android/dex/Annotation;->visibility:B

    new-instance v4, Lcom/tencent/tinker/android/dex/EncodedValue;

    iget-object v5, p1, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    iget v5, v5, Lcom/tencent/tinker/android/dex/EncodedValue;->off:I

    .line 576
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/tencent/tinker/android/dex/EncodedValue;-><init>(I[B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tinker/android/dex/Annotation;-><init>(IBLcom/tencent/tinker/android/dex/EncodedValue;)V

    .line 573
    return-object v1
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/AnnotationSet;)Lcom/tencent/tinker/android/dex/AnnotationSet;
    .locals 4
    .param p1, "annotationSet"    # Lcom/tencent/tinker/android/dex/AnnotationSet;

    .prologue
    .line 581
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->annotationOffsets:[I

    array-length v1, v0

    .line 582
    new-array v2, v1, [I

    .line 583
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 584
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->annotationOffsets:[I

    aget v3, v3, v0

    .line 585
    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustAnnotationOffset(I)I

    move-result v3

    aput v3, v2, v0

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/AnnotationSet;

    iget v1, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->off:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/android/dex/AnnotationSet;-><init>(I[I)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/AnnotationSetRefList;)Lcom/tencent/tinker/android/dex/AnnotationSetRefList;
    .locals 4
    .param p1, "annotationSetRefList"    # Lcom/tencent/tinker/android/dex/AnnotationSetRefList;

    .prologue
    .line 591
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->annotationSetRefItems:[I

    array-length v1, v0

    .line 592
    new-array v2, v1, [I

    .line 593
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 594
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->annotationSetRefItems:[I

    aget v3, v3, v0

    .line 595
    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustAnnotationSetOffset(I)I

    move-result v3

    aput v3, v2, v0

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;

    iget v1, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->off:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;-><init>(I[I)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)Lcom/tencent/tinker/android/dex/AnnotationsDirectory;
    .locals 9
    .param p1, "annotationsDirectory"    # Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 601
    iget v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->classAnnotationsOffset:I

    .line 602
    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustAnnotationSetOffset(I)I

    move-result v2

    .line 604
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v0, v0

    filled-new-array {v0, v7}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move v0, v1

    .line 606
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 607
    aget-object v4, v3, v0

    iget-object v5, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    .line 608
    invoke-virtual {p0, v5}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustFieldIdIndex(I)I

    move-result v5

    aput v5, v4, v1

    .line 609
    aget-object v4, v3, v0

    iget-object v5, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    aget-object v5, v5, v0

    aget v5, v5, v8

    .line 610
    invoke-virtual {p0, v5}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustAnnotationSetOffset(I)I

    move-result v5

    aput v5, v4, v8

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v0, v0

    filled-new-array {v0, v7}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    move v0, v1

    .line 615
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 616
    aget-object v5, v4, v0

    iget-object v6, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    aget-object v6, v6, v0

    aget v6, v6, v1

    .line 617
    invoke-virtual {p0, v6}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustMethodIdIndex(I)I

    move-result v6

    aput v6, v5, v1

    .line 618
    aget-object v5, v4, v0

    iget-object v6, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    aget-object v6, v6, v0

    aget v6, v6, v8

    .line 619
    invoke-virtual {p0, v6}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustAnnotationSetOffset(I)I

    move-result v6

    aput v6, v5, v8

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 622
    :cond_1
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v0, v0

    filled-new-array {v0, v7}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    move v0, v1

    .line 624
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 625
    aget-object v6, v5, v0

    iget-object v7, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    aget-object v7, v7, v0

    aget v7, v7, v1

    .line 626
    invoke-virtual {p0, v7}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustMethodIdIndex(I)I

    move-result v7

    aput v7, v6, v1

    .line 627
    aget-object v6, v5, v0

    iget-object v7, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    aget-object v7, v7, v0

    aget v7, v7, v8

    .line 628
    invoke-virtual {p0, v7}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustAnnotationSetRefListOffset(I)I

    move-result v7

    aput v7, v6, v8

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 633
    :cond_2
    new-instance v0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    iget v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->off:I

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;-><init>(II[[I[[I[[I)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/ClassData;)Lcom/tencent/tinker/android/dex/ClassData;
    .locals 6
    .param p1, "classData"    # Lcom/tencent/tinker/android/dex/ClassData;

    .prologue
    .line 384
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/ClassData;->staticFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)[Lcom/tencent/tinker/android/dex/ClassData$Field;

    move-result-object v2

    .line 385
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/ClassData;->instanceFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)[Lcom/tencent/tinker/android/dex/ClassData$Field;

    move-result-object v3

    .line 386
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/ClassData;->directMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)[Lcom/tencent/tinker/android/dex/ClassData$Method;

    move-result-object v4

    .line 387
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/ClassData;->virtualMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)[Lcom/tencent/tinker/android/dex/ClassData$Method;

    move-result-object v5

    .line 388
    new-instance v0, Lcom/tencent/tinker/android/dex/ClassData;

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->off:I

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/android/dex/ClassData;-><init>(I[Lcom/tencent/tinker/android/dex/ClassData$Field;[Lcom/tencent/tinker/android/dex/ClassData$Field;[Lcom/tencent/tinker/android/dex/ClassData$Method;[Lcom/tencent/tinker/android/dex/ClassData$Method;)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/ClassDef;)Lcom/tencent/tinker/android/dex/ClassDef;
    .locals 10
    .param p1, "classDef"    # Lcom/tencent/tinker/android/dex/ClassDef;

    .prologue
    .line 369
    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->typeIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v2

    .line 370
    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->supertypeIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v4

    .line 371
    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->interfacesOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeListOffset(I)I

    move-result v5

    .line 372
    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->sourceFileIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v6

    .line 373
    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->annotationsOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustAnnotationsDirectoryOffset(I)I

    move-result v7

    .line 374
    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustClassDataOffset(I)I

    move-result v8

    .line 375
    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->staticValuesOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStaticValuesOffset(I)I

    move-result v9

    .line 376
    new-instance v0, Lcom/tencent/tinker/android/dex/ClassDef;

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->off:I

    iget v3, p1, Lcom/tencent/tinker/android/dex/ClassDef;->accessFlags:I

    invoke-direct/range {v0 .. v9}, Lcom/tencent/tinker/android/dex/ClassDef;-><init>(IIIIIIIII)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/Code;)Lcom/tencent/tinker/android/dex/Code;
    .locals 9
    .param p1, "code"    # Lcom/tencent/tinker/android/dex/Code;

    .prologue
    .line 395
    iget v0, p1, Lcom/tencent/tinker/android/dex/Code;->debugInfoOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustDebugInfoItemOffset(I)I

    move-result v5

    .line 396
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustInstructions([S)[S

    move-result-object v6

    .line 397
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustCatchHandlers([Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    move-result-object v8

    .line 398
    new-instance v0, Lcom/tencent/tinker/android/dex/Code;

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->off:I

    iget v2, p1, Lcom/tencent/tinker/android/dex/Code;->registersSize:I

    iget v3, p1, Lcom/tencent/tinker/android/dex/Code;->insSize:I

    iget v4, p1, Lcom/tencent/tinker/android/dex/Code;->outsSize:I

    iget-object v7, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tinker/android/dex/Code;-><init>(IIIII[S[Lcom/tencent/tinker/android/dex/Code$Try;[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/DebugInfoItem;)Lcom/tencent/tinker/android/dex/DebugInfoItem;
    .locals 5
    .param p1, "debugInfoItem"    # Lcom/tencent/tinker/android/dex/DebugInfoItem;

    .prologue
    .line 456
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustParameterNames([I)[I

    move-result-object v0

    .line 457
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustDebugInfoItemSTM([B)[B

    move-result-object v1

    .line 458
    new-instance v2, Lcom/tencent/tinker/android/dex/DebugInfoItem;

    iget v3, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->off:I

    iget v4, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/tencent/tinker/android/dex/DebugInfoItem;-><init>(II[I[B)V

    return-object v2
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/EncodedValue;)Lcom/tencent/tinker/android/dex/EncodedValue;
    .locals 4
    .param p1, "encodedArray"    # Lcom/tencent/tinker/android/dex/EncodedValue;

    .prologue
    .line 549
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 550
    new-instance v1, Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;

    new-instance v2, Lcom/tencent/tinker/android/dx/util/IndexMap$3;

    invoke-direct {v2, p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap$3;-><init>(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;-><init>(Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dex/util/ByteOutput;)V

    new-instance v2, Lcom/tencent/tinker/android/dex/EncodedValueReader;

    const/16 v3, 0x1c

    invoke-direct {v2, p1, v3}, Lcom/tencent/tinker/android/dex/EncodedValueReader;-><init>(Lcom/tencent/tinker/android/dex/EncodedValue;I)V

    .line 557
    invoke-static {v1, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;->access$000(Lcom/tencent/tinker/android/dx/util/IndexMap$EncodedValueTransformer;Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    .line 560
    new-instance v1, Lcom/tencent/tinker/android/dex/EncodedValue;

    iget v2, p1, Lcom/tencent/tinker/android/dex/EncodedValue;->off:I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/android/dex/EncodedValue;-><init>(I[B)V

    return-object v1
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/FieldId;)Lcom/tencent/tinker/android/dex/FieldId;
    .locals 5
    .param p1, "fieldId"    # Lcom/tencent/tinker/android/dex/FieldId;

    .prologue
    .line 351
    iget v0, p1, Lcom/tencent/tinker/android/dex/FieldId;->declaringClassIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v0

    .line 352
    iget v1, p1, Lcom/tencent/tinker/android/dex/FieldId;->typeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v1

    .line 353
    iget v2, p1, Lcom/tencent/tinker/android/dex/FieldId;->nameIndex:I

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v2

    .line 354
    new-instance v3, Lcom/tencent/tinker/android/dex/FieldId;

    iget v4, p1, Lcom/tencent/tinker/android/dex/FieldId;->off:I

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/tencent/tinker/android/dex/FieldId;-><init>(IIII)V

    return-object v3
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/MethodId;)Lcom/tencent/tinker/android/dex/MethodId;
    .locals 5
    .param p1, "methodId"    # Lcom/tencent/tinker/android/dex/MethodId;

    .prologue
    .line 342
    iget v0, p1, Lcom/tencent/tinker/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v0

    .line 343
    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustProtoIdIndex(I)I

    move-result v1

    .line 344
    iget v2, p1, Lcom/tencent/tinker/android/dex/MethodId;->nameIndex:I

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v2

    .line 345
    new-instance v3, Lcom/tencent/tinker/android/dex/MethodId;

    iget v4, p1, Lcom/tencent/tinker/android/dex/MethodId;->off:I

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/tencent/tinker/android/dex/MethodId;-><init>(IIII)V

    return-object v3
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/ProtoId;)Lcom/tencent/tinker/android/dex/ProtoId;
    .locals 5
    .param p1, "protoId"    # Lcom/tencent/tinker/android/dex/ProtoId;

    .prologue
    .line 360
    iget v0, p1, Lcom/tencent/tinker/android/dex/ProtoId;->shortyIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v0

    .line 361
    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->returnTypeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v1

    .line 362
    iget v2, p1, Lcom/tencent/tinker/android/dex/ProtoId;->parametersOffset:I

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeListOffset(I)I

    move-result v2

    .line 363
    new-instance v3, Lcom/tencent/tinker/android/dex/ProtoId;

    iget v4, p1, Lcom/tencent/tinker/android/dex/ProtoId;->off:I

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/tencent/tinker/android/dex/ProtoId;-><init>(IIII)V

    return-object v3
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/TypeList;)Lcom/tencent/tinker/android/dex/TypeList;
    .locals 3
    .param p1, "typeList"    # Lcom/tencent/tinker/android/dex/TypeList;

    .prologue
    .line 331
    sget-object v0, Lcom/tencent/tinker/android/dex/TypeList;->EMPTY:Lcom/tencent/tinker/android/dex/TypeList;

    if-ne p1, v0, :cond_0

    .line 338
    .end local p1    # "typeList":Lcom/tencent/tinker/android/dex/TypeList;
    :goto_0
    return-object p1

    .line 334
    .restart local p1    # "typeList":Lcom/tencent/tinker/android/dex/TypeList;
    :cond_0
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/TypeList;->types:[S

    array-length v0, v0

    new-array v1, v0, [S

    .line 335
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 336
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/TypeList;->types:[S

    aget-short v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_1
    new-instance v0, Lcom/tencent/tinker/android/dex/TypeList;

    iget v2, p1, Lcom/tencent/tinker/android/dex/TypeList;->off:I

    invoke-direct {v0, v2, v1}, Lcom/tencent/tinker/android/dex/TypeList;-><init>(I[S)V

    move-object p1, v0

    goto :goto_0
.end method

.method public adjustAnnotationOffset(I)I
    .locals 2
    .param p1, "annotationOffset"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 260
    if-gez v0, :cond_1

    .line 261
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 263
    .end local p1    # "annotationOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "annotationOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustAnnotationSetOffset(I)I
    .locals 2
    .param p1, "annotationSetOffset"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 269
    if-gez v0, :cond_1

    .line 270
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationSetOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 272
    .end local p1    # "annotationSetOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "annotationSetOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustAnnotationSetRefListOffset(I)I
    .locals 2
    .param p1, "annotationSetRefListOffset"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 278
    if-gez v0, :cond_1

    .line 279
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationSetRefListOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 281
    .end local p1    # "annotationSetRefListOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "annotationSetRefListOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustAnnotationsDirectoryOffset(I)I
    .locals 2
    .param p1, "annotationsDirectoryOffset"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 287
    if-gez v0, :cond_1

    .line 288
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationsDirectoryOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 290
    .end local p1    # "annotationsDirectoryOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "annotationsDirectoryOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustClassDataOffset(I)I
    .locals 2
    .param p1, "classDataOffset"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 305
    if-gez v0, :cond_1

    .line 306
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedClassDataOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 308
    .end local p1    # "classDataOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "classDataOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustCodeOffset(I)I
    .locals 2
    .param p1, "codeOffset"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 323
    if-gez v0, :cond_1

    .line 324
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedCodeOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 326
    .end local p1    # "codeOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "codeOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustDebugInfoItemOffset(I)I
    .locals 2
    .param p1, "debugInfoItemOffset"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 314
    if-gez v0, :cond_1

    .line 315
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedDebugInfoItemOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 317
    .end local p1    # "debugInfoItemOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "debugInfoItemOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustFieldIdIndex(I)I
    .locals 2
    .param p1, "fieldIndex"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 233
    if-gez v0, :cond_1

    .line 234
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedFieldIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 236
    .end local p1    # "fieldIndex":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "fieldIndex":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustMethodIdIndex(I)I
    .locals 2
    .param p1, "methodIndex"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 242
    if-gez v0, :cond_1

    .line 243
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedMethodIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 245
    .end local p1    # "methodIndex":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "methodIndex":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustProtoIdIndex(I)I
    .locals 2
    .param p1, "protoIndex"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 224
    if-gez v0, :cond_1

    .line 225
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedProtoIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 227
    .end local p1    # "protoIndex":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "protoIndex":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustStaticValuesOffset(I)I
    .locals 2
    .param p1, "staticValuesOffset"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 296
    if-gez v0, :cond_1

    .line 297
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedStaticValuesOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 299
    .end local p1    # "staticValuesOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "staticValuesOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustStringIndex(I)I
    .locals 2
    .param p1, "stringIndex"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 206
    if-gez v0, :cond_1

    .line 207
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedStringIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 209
    .end local p1    # "stringIndex":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "stringIndex":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustTypeIdIndex(I)I
    .locals 2
    .param p1, "typeIdIndex"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 215
    if-gez v0, :cond_1

    .line 216
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedTypeIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 218
    .end local p1    # "typeIdIndex":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "typeIdIndex":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public adjustTypeListOffset(I)I
    .locals 2
    .param p1, "typeListOffset"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 251
    if-gez v0, :cond_1

    .line 252
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedTypeListOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 254
    .end local p1    # "typeListOffset":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "typeListOffset":I
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public mapAnnotationOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 134
    return-void
.end method

.method public mapAnnotationSetOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 143
    return-void
.end method

.method public mapAnnotationSetRefListOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 152
    return-void
.end method

.method public mapAnnotationsDirectoryOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 161
    return-void
.end method

.method public mapClassDataOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 179
    return-void
.end method

.method public mapCodeOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 197
    return-void
.end method

.method public mapDebugInfoItemOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 188
    return-void
.end method

.method public mapFieldIds(II)V
    .locals 1
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 107
    return-void
.end method

.method public mapMethodIds(II)V
    .locals 1
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 116
    return-void
.end method

.method public mapProtoIds(II)V
    .locals 1
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 98
    return-void
.end method

.method public mapStaticValuesOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 170
    return-void
.end method

.method public mapStringIds(II)V
    .locals 1
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 80
    return-void
.end method

.method public mapTypeIds(II)V
    .locals 1
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 89
    return-void
.end method

.method public mapTypeListOffset(II)V
    .locals 1
    .param p1, "oldOffset"    # I
    .param p2, "newOffset"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    .line 125
    return-void
.end method

.method public markAnnotationDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 137
    if-gez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markAnnotationSetDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 146
    if-gez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationSetOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markAnnotationSetRefListDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 155
    if-gez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationSetRefListOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markAnnotationsDirectoryDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 164
    if-gez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedAnnotationsDirectoryOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markClassDataDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 182
    if-gez p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedClassDataOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markCodeDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 200
    if-gez p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedCodeOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markDebugInfoItemDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 191
    if-gez p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedDebugInfoItemOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markFieldIdDeleted(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 110
    if-gez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedFieldIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markMethodIdDeleted(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 119
    if-gez p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedMethodIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markProtoIdDeleted(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 101
    if-gez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedProtoIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markStaticValuesDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 173
    if-gez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedStaticValuesOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markStringIdDeleted(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 83
    if-gez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedStringIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markTypeIdDeleted(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 92
    if-gez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedTypeIds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public markTypeListDeleted(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 128
    if-gez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap;->deletedTypeListOffsets:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method
