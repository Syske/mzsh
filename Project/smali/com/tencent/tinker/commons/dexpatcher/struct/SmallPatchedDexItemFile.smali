.class public final Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:S = 0x1s

.field public static final MAGIC:[B


# instance fields
.field private firstChunkOffset:I

.field private final oldDexSignToAnnotationIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToAnnotationSetIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToAnnotationSetRefListIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToAnnotationsDirectoryIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToClassDataIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToClassDefIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToCodeIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToDebugInfoIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToEncodedArrayIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToFieldIdIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToMethodIdIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToOffsetInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToProtoIdIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToStringIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToTypeIdIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSignToTypeListIndicesInSmallPatch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDexSigns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->MAGIC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x44t
        0x44t
        0x45t
        0x58t
        0x54t
        0x52t
        0x41t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "input"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSigns:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToStringIndicesInSmallPatch:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToTypeIdIndicesInSmallPatch:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToTypeListIndicesInSmallPatch:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToProtoIdIndicesInSmallPatch:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToFieldIdIndicesInSmallPatch:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToMethodIdIndicesInSmallPatch:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationIndicesInSmallPatch:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationSetIndicesInSmallPatch:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationSetRefListIndicesInSmallPatch:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationsDirectoryIndicesInSmallPatch:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToEncodedArrayIndicesInSmallPatch:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToDebugInfoIndicesInSmallPatch:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToCodeIndicesInSmallPatch:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDataIndicesInSmallPatch:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDefIndicesInSmallPatch:Ljava/util/Map;

    .line 101
    new-instance v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-static {p1}, Lcom/tencent/tinker/android/dex/util/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 102
    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->init(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSigns:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToStringIndicesInSmallPatch:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToTypeIdIndicesInSmallPatch:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToTypeListIndicesInSmallPatch:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToProtoIdIndicesInSmallPatch:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToFieldIdIndicesInSmallPatch:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToMethodIdIndicesInSmallPatch:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationIndicesInSmallPatch:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationSetIndicesInSmallPatch:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationSetRefListIndicesInSmallPatch:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationsDirectoryIndicesInSmallPatch:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToEncodedArrayIndicesInSmallPatch:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToDebugInfoIndicesInSmallPatch:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToCodeIndicesInSmallPatch:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDataIndicesInSmallPatch:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDefIndicesInSmallPatch:Ljava/util/Map;

    .line 106
    new-instance v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-static {p1}, Lcom/tencent/tinker/android/dex/util/FileUtils;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 107
    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->init(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)V

    .line 108
    return-void
.end method

.method private init(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)V
    .locals 5
    .param p1, "buffer"    # Lcom/tencent/tinker/android/dex/io/DexDataBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 111
    sget-object v1, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->MAGIC:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByteArray(I)[B

    move-result-object v1

    .line 112
    sget-object v2, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->MAGIC:[B

    invoke-static {v1, v2}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([B[B)I

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad dexdiff extra file magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    move-result v1

    iput v1, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->version:I

    .line 118
    iget v1, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->version:I

    if-eq v1, v3, :cond_1

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad dexdiff extra file version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->firstChunkOffset:I

    .line 125
    iget v1, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->firstChunkOffset:I

    invoke-virtual {p1, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->position(I)V

    .line 127
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v2

    move v1, v0

    .line 128
    :goto_0
    if-ge v1, v2, :cond_2

    .line 129
    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByteArray(I)[B

    move-result-object v3

    .line 130
    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSigns:Ljava/util/List;

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/util/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 133
    :goto_1
    if-ge v1, v2, :cond_3

    .line 134
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSigns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    new-instance v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$1;)V

    .line 136
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->stringIdsOffset:I

    .line 137
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->typeIdsOffset:I

    .line 138
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->protoIdsOffset:I

    .line 139
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->fieldIdsOffset:I

    .line 140
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->methodIdsOffset:I

    .line 141
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->classDefsOffset:I

    .line 142
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->stringDataItemsOffset:I

    .line 143
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->typeListsOffset:I

    .line 144
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationsOffset:I

    .line 145
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationSetsOffset:I

    .line 146
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationSetRefListsOffset:I

    .line 147
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationsDirectoriesOffset:I

    .line 148
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->debugInfoItemsOffset:I

    .line 149
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->codeItemsOffset:I

    .line 150
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->classDataItemsOffset:I

    .line 151
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->encodedArraysOffset:I

    .line 152
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->mapListOffset:I

    .line 153
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    iput v4, v3, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->dexSize:I

    .line 154
    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToStringIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToTypeIdIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToTypeListIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToProtoIdIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToFieldIdIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToMethodIdIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 163
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationSetIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 165
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationSetRefListIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationsDirectoryIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToEncodedArrayIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToDebugInfoIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToCodeIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDataIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDefIndicesInSmallPatch:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V

    .line 172
    return-void
.end method

.method private readDataChunk(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/util/Map;)V
    .locals 8
    .param p1, "buffer"    # Lcom/tencent/tinker/android/dex/io/DexDataBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tinker/android/dex/io/DexDataBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "oldDexSignToIndicesInSmallPatchMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/BitSet;>;"
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSigns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v5, v3

    .line 178
    :goto_0
    if-ge v5, v6, :cond_2

    .line 179
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v7

    move v2, v3

    move v0, v3

    .line 181
    :goto_1
    if-ge v2, v7, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readSleb128()I

    move-result v1

    .line 183
    add-int v4, v0, v1

    .line 185
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSigns:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 187
    if-nez v1, :cond_0

    .line 188
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 189
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 181
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_1

    .line 178
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 195
    :cond_2
    return-void
.end method


# virtual methods
.method public getPatchedAnnotationOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 278
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedAnnotationSetOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 253
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationSetsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedAnnotationSetRefListOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 248
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationSetRefListsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedAnnotationsDirectoryOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 288
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationsDirectoriesOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedClassDataOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 258
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->classDataItemsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedClassDefOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 233
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->classDefsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedCodeOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 263
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->codeItemsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedDebugInfoOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 273
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->debugInfoItemsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedDexSizeByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 293
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->dexSize:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedEncodedArrayOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 283
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->encodedArraysOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedFieldIdOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 223
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->fieldIdsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedMapListOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 238
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->mapListOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedMethodIdOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 228
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->methodIdsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedProtoIdOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 218
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->protoIdsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedStringDataOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 268
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->stringDataItemsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedStringIdOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 208
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->stringIdsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedTypeIdOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 213
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->typeIdsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPatchedTypeListOffsetByOldDexSign(Ljava/lang/String;)I
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToOffsetInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;

    .line 243
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->typeListsOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isAffectedOldDex(Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSigns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAnnotationInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 346
    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isAnnotationSetInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationSetIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 354
    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isAnnotationSetRefListInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationSetRefListIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 364
    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isAnnotationsDirectoryInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToAnnotationsDirectoryIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 374
    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isClassDataInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDataIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 406
    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isClassDefInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 413
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDefIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 414
    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isCodeInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToCodeIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 398
    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isDebugInfoInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToDebugInfoIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 390
    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isEncodedArrayInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToEncodedArrayIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 382
    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isFieldIdInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToFieldIdIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 330
    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isMethodIdInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToMethodIdIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 338
    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isProtoIdInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToProtoIdIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 322
    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isSmallPatchedDexEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToClassDefIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStringInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToStringIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 298
    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isTypeIdInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToTypeIdIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 306
    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isTypeListInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "indexInPatchedDex"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->oldDexSignToTypeListIndicesInSmallPatch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 314
    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method
