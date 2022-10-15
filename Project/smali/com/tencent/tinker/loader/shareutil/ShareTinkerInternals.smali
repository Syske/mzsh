.class public Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerInternals"

.field private static final VM_IS_ART:Z

.field private static processName:Ljava/lang/String;

.field private static tinkerID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->VM_IS_ART:Z

    .line 47
    sput-object v1, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->processName:Ljava/lang/String;

    .line 48
    sput-object v1, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->tinkerID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPackageAndTinkerFlag(Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;I)I
    .locals 4
    .param p0, "securityCheck"    # Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;
    .param p1, "tinkerFlag"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x9

    .line 132
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledAll(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getMetaContentMap()Ljava/util/HashMap;

    move-result-object v2

    .line 137
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForDex(I)Z

    move-result v3

    .line 138
    if-nez v3, :cond_2

    const-string v3, "assets/dex_meta.txt"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForNativeLib(I)Z

    move-result v3

    .line 143
    if-nez v3, :cond_3

    const-string v3, "assets/so_meta.txt"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 144
    goto :goto_0

    .line 147
    :cond_3
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForResource(I)Z

    move-result v3

    .line 148
    if-nez v3, :cond_0

    const-string v3, "assets/res_meta.txt"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public static checkSignatureAndTinkerID(Landroid/content/Context;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "securityCheck"    # Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;

    .prologue
    .line 104
    invoke-virtual {p2, p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->verifyPatchMetaSignature(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getManifestTinkerID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 109
    if-nez v1, :cond_1

    .line 110
    const/4 v0, -0x5

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getPackagePropertiesIfPresent()Ljava/util/HashMap;

    move-result-object v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    const/4 v0, -0x2

    goto :goto_0

    .line 119
    :cond_2
    const-string v2, "TINKER_ID"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    if-nez v0, :cond_3

    .line 121
    const/4 v0, -0x6

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 124
    const-string v2, "Tinker.TinkerInternals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tinkerId is not equal, base is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", but patch is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, -0x7

    goto :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkTinkerPackage(Landroid/content/Context;ILjava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tinkerFlag"    # I
    .param p2, "patchFile"    # Ljava/io/File;
    .param p3, "securityCheck"    # Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;

    .prologue
    .line 89
    invoke-static {p0, p2, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->checkSignatureAndTinkerID(Landroid/content/Context;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I

    move-result v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-static {p3, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->checkPackageAndTinkerFlag(Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;I)I

    move-result v0

    .line 93
    :cond_0
    return v0
.end method

.method public static fastGetPatchPackageMeta(Ljava/io/File;)Ljava/util/Properties;
    .locals 6
    .param p0, "patchFile"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 162
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 163
    :cond_0
    const-string v1, "Tinker.TinkerInternals"

    const-string v2, "patchFile is illegal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-object v0

    .line 168
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :try_start_1
    const-string v1, "assets/package_meta.txt"

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 170
    if-nez v1, :cond_2

    .line 171
    const-string v1, "Tinker.TinkerInternals"

    const-string v2, "patch meta entry not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 187
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 176
    :cond_2
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 177
    :try_start_3
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 178
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 181
    :try_start_4
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    move-object v0, v1

    .line 179
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_5
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 184
    :goto_2
    :try_start_6
    const-string v3, "Tinker.TinkerInternals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fastGetPatchPackageMeta exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 187
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 183
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    .line 181
    :catchall_4
    move-exception v1

    goto :goto_1
.end method

.method public static getManifestTinkerID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 191
    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->tinkerID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 192
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->tinkerID:Ljava/lang/String;

    .line 209
    :goto_0
    return-object v0

    .line 195
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 199
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "TINKER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_1

    .line 201
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->tinkerID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->tinkerID:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->tinkerID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 205
    :catch_0
    move-exception v1

    .line 206
    const-string v2, "Tinker.TinkerInternals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getManifestTinkerID exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->processName:Ljava/lang/String;

    .line 308
    :goto_0
    return-object v0

    .line 307
    :cond_0
    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getProcessNameInternal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->processName:Ljava/lang/String;

    .line 308
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getProcessNameInternal(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x80

    const/4 v3, 0x0

    .line 313
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 315
    if-eqz p0, :cond_0

    if-gtz v4, :cond_2

    .line 316
    :cond_0
    const-string v0, ""

    .line 364
    :cond_1
    :goto_0
    return-object v0

    .line 320
    :cond_2
    const-string v0, "activity"

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 324
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 325
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v4, :cond_3

    .line 334
    :goto_1
    if-eqz v0, :cond_5

    .line 335
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v2, "Tinker.TinkerInternals"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessNameInternal exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 338
    :cond_5
    new-array v5, v7, [B

    .line 341
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/cmdline"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :try_start_2
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 343
    if-lez v1, :cond_9

    move v0, v3

    .line 344
    :goto_2
    if-ge v0, v1, :cond_7

    .line 345
    aget-byte v3, v5, v0

    if-gt v3, v7, :cond_6

    aget-byte v3, v5, v0

    if-gtz v3, :cond_8

    :cond_6
    move v1, v0

    .line 350
    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v5, v3, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    if-eqz v2, :cond_1

    .line 358
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 360
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 344
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 357
    :cond_9
    if-eqz v2, :cond_a

    .line 358
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 364
    :cond_a
    :goto_3
    const-string v0, ""

    goto/16 :goto_0

    .line 353
    :catch_2
    move-exception v0

    .line 354
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 357
    if-eqz v1, :cond_a

    .line 358
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 360
    :catch_3
    move-exception v0

    goto :goto_3

    .line 356
    :catchall_0
    move-exception v0

    .line 357
    :goto_5
    if-eqz v1, :cond_b

    .line 358
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 361
    :cond_b
    :goto_6
    throw v0

    .line 360
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_6

    .line 356
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 353
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 226
    packed-switch p0, :pswitch_data_0

    .line 242
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    const-string v0, "dex"

    goto :goto_0

    .line 230
    :pswitch_1
    const-string v0, "dex_art"

    goto :goto_0

    .line 232
    :pswitch_2
    const-string v0, "dex_opt"

    goto :goto_0

    .line 234
    :pswitch_3
    const-string v0, "lib"

    goto :goto_0

    .line 236
    :pswitch_4
    const-string v0, "patch_file"

    goto :goto_0

    .line 238
    :pswitch_5
    const-string v0, "patch_info"

    goto :goto_0

    .line 240
    :pswitch_6
    const-string v0, "resource"

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static isInMainProcess(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 277
    :cond_0
    const-string v0, ""

    .line 280
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNullOrNil(Ljava/lang/String;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemOTA(Ljava/lang/String;)Z
    .locals 5
    .param p0, "lastFingerPrint"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 55
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 56
    if-eqz p0, :cond_0

    const-string v2, ""

    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    const-string v2, "Tinker.TinkerInternals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fingerprint empty:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return v0

    .line 63
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    const-string v2, "Tinker.TinkerInternals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "same fingerprint:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    const-string v0, "Tinker.TinkerInternals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system OTA,fingerprint not equal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTinkerEnableWithSharedPreferences(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const-string v0, "tinker_share_config"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 262
    const-string v1, "tinker_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTinkerEnabled(I)Z
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 266
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTinkerEnabledAll(I)Z
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 270
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTinkerEnabledForDex(I)Z
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 213
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTinkerEnabledForNativeLib(I)Z
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 217
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTinkerEnabledForResource(I)Z
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 222
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVmArt()Z
    .locals 2

    .prologue
    .line 51
    sget-boolean v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->VM_IS_ART:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVmArt(Ljava/lang/String;)Z
    .locals 6
    .param p0, "versionString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 372
    .line 373
    if-eqz p0, :cond_1

    .line 374
    const-string v2, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 375
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 378
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 379
    if-gt v3, v5, :cond_0

    if-ne v3, v5, :cond_1

    if-lt v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 387
    :cond_1
    :goto_0
    return v0

    .line 382
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static killAllOtherProcess(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 287
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 289
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 290
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 294
    :cond_1
    return-void
.end method

.method public static setTinkerDisableWithSharedPreferences(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    const-string v0, "tinker_share_config"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tinker_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    return-void
.end method
