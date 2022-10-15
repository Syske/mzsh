.class public Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private annotationSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private annotationSetRefListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/AnnotationSetRefList;",
            ">;"
        }
    .end annotation
.end field

.field private annotationSetSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/AnnotationSet;",
            ">;"
        }
    .end annotation
.end field

.field private annotationsDirectorySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/AnnotationsDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private classDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/ClassData;",
            ">;"
        }
    .end annotation
.end field

.field private classDefSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/ClassDef;",
            ">;"
        }
    .end annotation
.end field

.field private codeSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/Code;",
            ">;"
        }
    .end annotation
.end field

.field private debugInfoSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/DebugInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private encodedArraySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/EncodedValue;",
            ">;"
        }
    .end annotation
.end field

.field private final extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

.field private fieldIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/FieldId;",
            ">;"
        }
    .end annotation
.end field

.field private methodIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/MethodId;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDex:Lcom/tencent/tinker/android/dex/Dex;

.field private final oldDexSignStr:Ljava/lang/String;

.field private final oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

.field private final patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

.field private final patchedDex:Lcom/tencent/tinker/android/dex/Dex;

.field private final patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

.field private protoIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/ProtoId;",
            ">;"
        }
    .end annotation
.end field

.field private stringDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/StringData;",
            ">;"
        }
    .end annotation
.end field

.field private typeIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private typeListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
            "<",
            "Lcom/tencent/tinker/android/dex/TypeList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V
    .locals 2
    .param p1, "oldDexIn"    # Lcom/tencent/tinker/android/dex/Dex;
    .param p2, "patchFileIn"    # Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;
    .param p3, "extraAddedDexElementsFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->computeSignature(Z)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dx/util/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDexSignStr:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 166
    if-nez p3, :cond_1

    .line 167
    new-instance v0, Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedDexSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    .line 173
    :goto_0
    new-instance v0, Lcom/tencent/tinker/android/dx/util/IndexMap;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 174
    if-eqz p3, :cond_2

    new-instance v0, Lcom/tencent/tinker/android/dx/util/IndexMap;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 175
    iput-object p3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 177
    if-nez p2, :cond_3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDexSignStr:Ljava/lang/String;

    .line 178
    invoke-virtual {p3, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->isAffectedOldDex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "patchFileIn is null, and extraAddedDexElementFile(smallPatchInfo) is null or does not mention oldDexIn."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    new-instance v0, Lcom/tencent/tinker/android/dex/Dex;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDexSignStr:Ljava/lang/String;

    .line 170
    invoke-virtual {p3, v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedDexSizeByOldDexSign(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 185
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "oldDexIn"    # Ljava/io/File;
    .param p2, "patchFileIn"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v2, Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {v2, p1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-direct {v0, p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    .line 103
    return-void

    :cond_0
    move-object v0, v1

    .line 98
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V
    .locals 2
    .param p1, "oldDexIn"    # Ljava/io/File;
    .param p2, "patchFileIn"    # Ljava/io/File;
    .param p3, "extraInfoFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v1, Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {v1, p1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-direct {v0, p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-direct {p0, v1, v0, p3}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    .line 131
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/io/InputStream;)V
    .locals 3
    .param p1, "oldDexIn"    # Ljava/io/InputStream;
    .param p2, "initDexSize"    # I
    .param p3, "patchFileIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 114
    new-instance v2, Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {v2, p1, p2}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/io/InputStream;I)V

    if-eqz p3, :cond_0

    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-direct {v0, p3}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    .line 119
    return-void

    :cond_0
    move-object v0, v1

    .line 114
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/io/InputStream;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V
    .locals 2
    .param p1, "oldDexIn"    # Ljava/io/InputStream;
    .param p2, "initDexSize"    # I
    .param p3, "patchFileIn"    # Ljava/io/InputStream;
    .param p4, "extraInfoFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {v1, p1, p2}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/io/InputStream;I)V

    if-eqz p3, :cond_0

    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-direct {v0, p3}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v1, v0, p4}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    .line 156
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "oldDexIn"    # Ljava/io/InputStream;
    .param p2, "patchFileIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v2, Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {v2, p1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/io/InputStream;)V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-direct {v0, p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    .line 111
    return-void

    :cond_0
    move-object v0, v1

    .line 106
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V
    .locals 2
    .param p1, "oldDexIn"    # Ljava/io/InputStream;
    .param p2, "patchFileIn"    # Ljava/io/InputStream;
    .param p3, "extraInfoFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {v1, p1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/io/InputStream;)V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-direct {v0, p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v1, v0, p3}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    .line 143
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public executeAndSaveTo(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 396
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->executeAndSaveTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 399
    if-eqz v1, :cond_0

    .line 401
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 399
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 401
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 404
    :cond_1
    :goto_2
    throw v0

    .line 402
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 399
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public executeAndSaveTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {v0, v5}, Lcom/tencent/tinker/android/dex/Dex;->computeSignature(Z)[B

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to compute old dex\'s signature."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getOldDexSignature()[B

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([B[B)I

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    new-instance v2, Ljava/io/IOException;

    const-string v3, "old dex signature mismatch! expected: %s, actual: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 201
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 202
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 199
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_1
    invoke-static {v0}, Lcom/tencent/tinker/android/dx/util/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dex/Dex;->getTableOfContents()Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v7

    .line 214
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iput v5, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 215
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iput v6, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    .line 216
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iput v6, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    .line 218
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDexSignStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->isAffectedOldDex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 219
    :cond_2
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 220
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedStringIdSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 221
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 222
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedTypeIdSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 223
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 224
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedTypeListSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 225
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 226
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedProtoIdSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 227
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 228
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedFieldIdSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 229
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 230
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedMethodIdSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 231
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 232
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedClassDefSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 233
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 234
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedMapListSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 235
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 236
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedStringDataSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 237
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 238
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedAnnotationSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 239
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 240
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedAnnotationSetSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 241
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 242
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedAnnotationSetRefListSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 243
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationsDirectories:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 244
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedAnnotationsDirectorySectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 245
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 246
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedEncodedArraySectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 247
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 248
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedDebugInfoSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 249
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 250
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedCodeSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 251
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 252
    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedClassDataSectionOffset()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 253
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 254
    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedDexSize()I

    move-result v0

    iput v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->fileSize:I

    .line 294
    :goto_0
    iget-object v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v7}, Lcom/tencent/tinker/android/dex/TableOfContents;->computeSizesFromOffsets()V

    .line 299
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/StringDataSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/StringDataSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->stringDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 303
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->typeIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 307
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ProtoIdSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ProtoIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->protoIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 311
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/FieldIdSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/FieldIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->fieldIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 315
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/MethodIdSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/MethodIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->methodIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 319
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ClassDefSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ClassDefSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->classDefSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 323
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeListSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeListSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->typeListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 327
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetRefListSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetRefListSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSetRefListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 331
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSetSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 335
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ClassDataSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ClassDataSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->classDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 339
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/CodeSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/CodeSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->codeSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 343
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DebugInfoItemSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DebugInfoItemSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->debugInfoSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 347
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 351
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/StaticValueSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/StaticValueSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->encodedArraySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 355
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationsDirectorySectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationsDirectorySectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationsDirectorySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    .line 360
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->stringDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 361
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->typeIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 362
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->typeListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 363
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->protoIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 364
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->fieldIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 365
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->methodIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 366
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 367
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 368
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSetSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 369
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSetRefListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 370
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationsDirectorySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 371
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 372
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->debugInfoSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 373
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->codeSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 374
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 375
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->classDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 376
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->encodedArraySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 377
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->classDefSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    .line 378
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 381
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v0

    .line 382
    invoke-virtual {v7, v0}, Lcom/tencent/tinker/android/dex/TableOfContents;->writeHeader(Lcom/tencent/tinker/android/dex/Dex$Section;)V

    .line 384
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v0

    .line 385
    invoke-virtual {v7, v0}, Lcom/tencent/tinker/android/dex/TableOfContents;->writeMap(Lcom/tencent/tinker/android/dex/Dex$Section;)V

    .line 387
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/Dex;->writeHashes()V

    .line 390
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V

    .line 391
    return-void

    .line 256
    :cond_3
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 257
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedStringIdOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 258
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 259
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedTypeIdOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 260
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 261
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedTypeListOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 262
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 263
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedProtoIdOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 264
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 265
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedFieldIdOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 266
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 267
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedMethodIdOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 268
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 269
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedClassDefOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 270
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 271
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedMapListOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 272
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 273
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedStringDataOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 274
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 275
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedAnnotationOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 276
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 277
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedAnnotationSetOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 278
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 279
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedAnnotationSetRefListOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 280
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationsDirectories:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 281
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedAnnotationsDirectoryOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 282
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 283
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedEncodedArrayOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 284
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 285
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedDebugInfoOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 286
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 287
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedCodeOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 288
    iget-object v1, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 289
    invoke-virtual {v2, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedClassDataOffsetByOldDexSign(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    .line 290
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .line 291
    invoke-virtual {v1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->getPatchedDexSizeByOldDexSign(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/tencent/tinker/android/dex/TableOfContents;->fileSize:I

    goto/16 :goto_0
.end method
