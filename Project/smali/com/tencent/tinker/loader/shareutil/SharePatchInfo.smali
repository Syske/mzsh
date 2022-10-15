.class public Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final FINGER_PRINT:Ljava/lang/String; = "print"

.field public static final MAX_EXTRACT_ATTEMPTS:I = 0x2

.field public static final NEW_VERSION:Ljava/lang/String; = "new"

.field public static final OLD_VERSION:Ljava/lang/String; = "old"

.field private static final TAG:Ljava/lang/String; = "PatchInfo"


# instance fields
.field public fingerPrint:Ljava/lang/String;

.field public newVersion:Ljava/lang/String;

.field public oldVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "oldVer"    # Ljava/lang/String;
    .param p2, "newVew"    # Ljava/lang/String;
    .param p3, "finger"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->fingerPrint:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private static readAndCheckProperty(Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;
    .locals 11
    .param p0, "pathInfoFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    move-object v5, v0

    move-object v3, v0

    move-object v4, v0

    move v7, v1

    .line 108
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    if-nez v7, :cond_4

    .line 109
    add-int/lit8 v6, v1, 0x1

    .line 110
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 113
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 115
    const-string v8, "old"

    invoke-virtual {v1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    const-string v8, "new"

    invoke-virtual {v1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    const-string v8, "print"

    invoke-virtual {v1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 122
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    :goto_1
    if-eqz v4, :cond_6

    if-nez v3, :cond_0

    move-object v5, v1

    move v1, v6

    .line 126
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 120
    :goto_2
    :try_start_2
    const-string v8, "PatchInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read property failed, e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v5

    .line 123
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 129
    :cond_0
    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 130
    :cond_2
    const-string v2, "PatchInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path info file  corrupted:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    move v1, v6

    .line 131
    goto/16 :goto_0

    .line 133
    :cond_3
    const/4 v2, 0x1

    move-object v5, v1

    move v7, v2

    move v1, v6

    .line 135
    goto/16 :goto_0

    .line 137
    :cond_4
    if-eqz v7, :cond_5

    .line 138
    new-instance v0, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    invoke-direct {v0, v4, v3, v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_5
    return-object v0

    .line 122
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 118
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_6
    move-object v5, v1

    move v1, v6

    goto/16 :goto_0
.end method

.method public static readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;
    .locals 4
    .param p0, "pathInfoFile"    # Ljava/io/File;
    .param p1, "lockFile"    # Ljava/io/File;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->getFileLock(Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;

    move-result-object v1

    .line 60
    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->readAndCheckProperty(Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    if-eqz v1, :cond_1

    .line 66
    :try_start_1
    invoke-virtual {v1}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :cond_1
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    const-string v2, "PatchInfo"

    const-string v3, "releaseInfoLock error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    :try_start_2
    new-instance v2, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v3, "readAndCheckPropertyWithLock fail"

    invoke-direct {v2, v3, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    if-eqz v1, :cond_2

    .line 66
    :try_start_3
    invoke-virtual {v1}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 70
    :cond_2
    :goto_1
    throw v0

    .line 68
    :catch_2
    move-exception v1

    .line 69
    const-string v2, "PatchInfo"

    const-string v3, "releaseInfoLock error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static rewritePatchInfoFile(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;)Z
    .locals 7
    .param p0, "pathInfoFile"    # Ljava/io/File;
    .param p1, "info"    # Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 193
    :cond_1
    :goto_0
    return v0

    .line 148
    :cond_2
    const-string v2, "PatchInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rewritePatchInfoFile file path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , oldVer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newVer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    move v2, v1

    move v3, v1

    .line 163
    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_6

    if-nez v3, :cond_6

    .line 164
    add-int/lit8 v5, v2, 0x1

    .line 166
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 167
    const-string v3, "old"

    iget-object v4, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v3, "new"

    iget-object v4, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v3, "print"

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/4 v4, 0x0

    .line 173
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "from old version:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to new version:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    :goto_2
    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->readAndCheckProperty(Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    .line 185
    :goto_3
    if-nez v2, :cond_4

    .line 186
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    move v3, v2

    move v2, v5

    .line 188
    goto :goto_1

    .line 176
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 177
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_5
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_5
    move v2, v1

    .line 184
    goto :goto_3

    .line 189
    :cond_6
    if-nez v3, :cond_1

    move v0, v1

    .line 193
    goto/16 :goto_0

    .line 179
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 176
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method public static rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z
    .locals 4
    .param p0, "pathInfoFile"    # Ljava/io/File;
    .param p1, "info"    # Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;
    .param p2, "lockFile"    # Ljava/io/File;

    .prologue
    .line 77
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 84
    :try_start_0
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->getFileLock(Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;

    move-result-object v1

    .line 85
    invoke-static {p0, p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFile(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 90
    if-eqz v1, :cond_1

    .line 91
    :try_start_1
    invoke-virtual {v1}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :cond_1
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    const-string v2, "PatchInfo"

    const-string v3, "releaseInfoLock error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    :try_start_2
    new-instance v2, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v3, "rewritePatchInfoFileWithLock fail"

    invoke-direct {v2, v3, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    if-eqz v1, :cond_2

    .line 91
    :try_start_3
    invoke-virtual {v1}, Lcom/tencent/tinker/loader/shareutil/ShareFileLockHelper;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 95
    :cond_2
    :goto_1
    throw v0

    .line 93
    :catch_2
    move-exception v1

    .line 94
    const-string v2, "PatchInfo"

    const-string v3, "releaseInfoLock error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
