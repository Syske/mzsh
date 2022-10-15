.class public Lcom/tencent/tinker/lib/patch/BasePatchInternal;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field protected static final DEX_META_FILE:Ljava/lang/String; = "assets/dex_meta.txt"

.field protected static final DEX_OPTIMIZE_PATH:Ljava/lang/String; = "odex"

.field protected static final DEX_PATH:Ljava/lang/String; = "dex"

.field protected static final MAX_EXTRACT_ATTEMPTS:I = 0x2

.field protected static final RES_META_FILE:Ljava/lang/String; = "assets/res_meta.txt"

.field protected static final SO_META_FILE:Ljava/lang/String; = "assets/so_meta.txt"

.field protected static final SO_PATH:Ljava/lang/String; = "lib"

.field protected static final TAG:Ljava/lang/String; = "Tinker.BasePatchInternal"

.field protected static final TYPE_DEX:I = 0x3

.field protected static final TYPE_DEX_FOR_ART:I = 0x4

.field protected static final TYPE_Library:I = 0x6

.field protected static final TYPE_RESOURCE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "entryFile"    # Ljava/util/zip/ZipEntry;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "targetMd5"    # Ljava/lang/String;
    .param p4, "isDex"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    move v0, v1

    move v2, v1

    .line 53
    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    if-nez v0, :cond_3

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 57
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    const-string v0, "Tinker.BasePatchInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try Extracting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/16 v0, 0x4000

    :try_start_0
    new-array v5, v0, [B

    .line 63
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    .line 64
    :goto_1
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 66
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_1

    .line 69
    :cond_1
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    if-eqz p4, :cond_2

    .line 74
    invoke-static {p2, p3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 78
    :goto_2
    const-string v3, "Tinker.BasePatchInternal"

    const-string v4, "isExtractionSuccessful: %b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 82
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "Tinker.BasePatchInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete corrupted dex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 69
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 76
    :cond_2
    invoke-static {p2, p3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 88
    :cond_3
    return v0
.end method

.method public static getMetaCorruptedCode(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 92
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, -0x3

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 95
    const/4 v0, -0x4

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3

    .line 97
    const/4 v0, -0x8

    goto :goto_0

    .line 99
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
