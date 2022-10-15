.class public Lcom/meizu/smart/wristband/utils/loadfile/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;
    }
.end annotation


# static fields
.field private static ANDROID_SECURE:Ljava/lang/String; = null

.field public static CATEGORY_TAB_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "Util"

.field public static SDCARD_TAB_INDEX:I

.field public static sZipFileMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "/mnt/sdcard/.android_secure"

    sput-object v0, Lcom/meizu/smart/wristband/utils/loadfile/Util;->ANDROID_SECURE:Ljava/lang/String;

    .line 190
    const-string v0, "application/zip"

    sput-object v0, Lcom/meizu/smart/wristband/utils/loadfile/Util;->sZipFileMimeType:Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    sput v0, Lcom/meizu/smart/wristband/utils/loadfile/Util;->CATEGORY_TAB_INDEX:I

    .line 193
    const/4 v0, 0x1

    sput v0, Lcom/meizu/smart/wristband/utils/loadfile/Util;->SDCARD_TAB_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static FormetFileSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "fileS"    # J

    .prologue
    .line 313
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, ""

    .line 315
    .local v1, "fileSizeString":Ljava/lang/String;
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    :goto_0
    return-object v1

    .line 317
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 319
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 322
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static cleanUpDownLoadFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "updateFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const-string v1, "Util"

    const-string v2, "delete file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 309
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static convertNumber(J)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # J

    .prologue
    .line 90
    const-string v0, "%,d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertStorage(J)Ljava/lang/String;
    .locals 14
    .param p0, "size"    # J

    .prologue
    const-wide/16 v12, 0x400

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 95
    const-wide/16 v4, 0x400

    .line 96
    .local v4, "kb":J
    mul-long v6, v4, v12

    .line 97
    .local v6, "mb":J
    mul-long v2, v6, v12

    .line 99
    .local v2, "gb":J
    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    .line 100
    const-string v1, "%.1f GB"

    new-array v8, v9, [Ljava/lang/Object;

    long-to-float v9, p0

    long-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 101
    :cond_0
    cmp-long v1, p0, v6

    if-ltz v1, :cond_2

    .line 102
    long-to-float v1, p0

    long-to-float v8, v6

    div-float v0, v1, v8

    .line 103
    .local v0, "f":F
    cmpl-float v1, v0, v10

    if-lez v1, :cond_1

    const-string v1, "%.0f MB"

    :goto_1
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "%.1f MB"

    goto :goto_1

    .line 104
    .end local v0    # "f":F
    :cond_2
    cmp-long v1, p0, v4

    if-ltz v1, :cond_4

    .line 105
    long-to-float v1, p0

    long-to-float v8, v4

    div-float v0, v1, v8

    .line 106
    .restart local v0    # "f":F
    cmpl-float v1, v0, v10

    if-lez v1, :cond_3

    const-string v1, "%.0f KB"

    :goto_2
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "%.1f KB"

    goto :goto_2

    .line 108
    .end local v0    # "f":F
    :cond_4
    const-string v1, "%d B"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 182
    .line 183
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 185
    .local v1, "dateFormat":Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 186
    .local v2, "timeFormat":Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 187
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAllApps(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 288
    .local v2, "pManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 289
    .local v4, "paklist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 290
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 291
    .local v3, "pak":Landroid/content/pm/PackageInfo;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v3    # "pak":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v0
.end method

.method public static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 70
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 72
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 73
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 75
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 77
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 82
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 78
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "Util"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v2, ""

    .line 224
    .local v2, "name":Ljava/lang/String;
    const-string v3, "/"

    .line 225
    .local v3, "pathPrefix":Ljava/lang/String;
    const-string v0, ".apk"

    .line 226
    .local v0, "apkPrefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 227
    .local v4, "start":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, "end":I
    if-ltz v4, :cond_0

    if-ltz v1, :cond_0

    if-le v1, v4, :cond_0

    .line 229
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_0
    return-object v2
.end method

.method public static getApps(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 266
    .local v2, "pManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 267
    .local v4, "paklist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 268
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 270
    .local v3, "pak":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    and-int/lit8 v5, v5, 0x1

    if-gtz v5, :cond_0

    .line 272
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v3    # "pak":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v0
.end method

.method public static getSDCardInfo()Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;
    .locals 16

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "sDcString":Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 128
    .local v10, "pathFile":Ljava/io/File;
    :try_start_0
    new-instance v12, Landroid/os/StatFs;

    .line 129
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 131
    .local v12, "statfs":Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v8, v13

    .line 133
    .local v8, "nTotalBlocks":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 135
    .local v4, "nBlocSize":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v2, v13

    .line 137
    .local v2, "nAvailaBlock":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v13

    int-to-long v6, v13

    .line 138
    .local v6, "nFreeBlock":J
    new-instance v1, Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;-><init>()V

    .line 140
    .local v1, "info":Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;
    mul-long v14, v8, v4

    iput-wide v14, v1, Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;->total:J

    .line 142
    mul-long v14, v2, v4

    iput-wide v14, v1, Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;->free:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "info":Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;
    .end local v2    # "nAvailaBlock":J
    .end local v4    # "nBlocSize":J
    .end local v6    # "nFreeBlock":J
    .end local v8    # "nTotalBlocks":J
    .end local v10    # "pathFile":Ljava/io/File;
    .end local v12    # "statfs":Landroid/os/StatFs;
    :goto_0
    return-object v1

    .line 144
    .restart local v10    # "pathFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v13, "Util"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "pathFile":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSdDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemApps(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 244
    .local v2, "pManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 245
    .local v4, "paklist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 246
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 248
    .local v3, "pak":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_0

    .line 250
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "pak":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v0
.end method

.method public static getSystemRomInfo()Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;
    .locals 14

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    .line 159
    .local v10, "root":Ljava/io/File;
    :try_start_0
    new-instance v11, Landroid/os/StatFs;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/data"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 162
    .local v11, "statfs":Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v8, v12

    .line 164
    .local v8, "nTotalBlocks":J
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 166
    .local v4, "nBlocSize":J
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v2, v12

    .line 168
    .local v2, "nAvailaBlock":J
    invoke-virtual {v11}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v12

    int-to-long v6, v12

    .line 169
    .local v6, "nFreeBlock":J
    new-instance v1, Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;-><init>()V

    .line 171
    .local v1, "info":Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;
    mul-long v12, v8, v4

    iput-wide v12, v1, Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;->total:J

    .line 173
    mul-long v12, v2, v4

    iput-wide v12, v1, Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;->free:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "info":Lcom/meizu/smart/wristband/utils/loadfile/Util$SDCardInfo;
    .end local v2    # "nAvailaBlock":J
    .end local v4    # "nBlocSize":J
    .end local v6    # "nFreeBlock":J
    .end local v8    # "nTotalBlocks":J
    .end local v11    # "statfs":Landroid/os/StatFs;
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v12, "Util"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 206
    .local v1, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 206
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNormalFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fullName"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/meizu/smart/wristband/utils/loadfile/Util;->ANDROID_SECURE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardReady()Z
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path1"    # Ljava/lang/String;
    .param p1, "path2"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
