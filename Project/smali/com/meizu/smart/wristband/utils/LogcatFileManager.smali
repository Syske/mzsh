.class public Lcom/meizu/smart/wristband/utils/LogcatFileManager;
.super Ljava/lang/Object;
.source "LogcatFileManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/meizu/smart/wristband/utils/LogcatFileManager;

.field private static PATH_LOGCAT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mLogDumper:Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

.field private mPId:I

.field private simpleDateFormat1:Ljava/text/SimpleDateFormat;

.field private simpleDateFormat2:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->INSTANCE:Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    .line 34
    const-class v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mLogDumper:Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->simpleDateFormat1:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->simpleDateFormat2:Ljava/text/SimpleDateFormat;

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mPId:I

    .line 49
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 50
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/utils/LogcatFileManager;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->simpleDateFormat1:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/utils/LogcatFileManager;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->simpleDateFormat2:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getInstance()Lcom/meizu/smart/wristband/utils/LogcatFileManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->INSTANCE:Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->INSTANCE:Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->INSTANCE:Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    return-object v0
.end method

.method public static getTraceInfo(Ljava/lang/Throwable;)Ljava/lang/StringBuffer;
    .locals 7
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 210
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v0, p0

    .line 213
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 214
    .local v3, "stacks":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 215
    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->setError(Ljava/lang/String;)V

    .line 218
    :cond_0
    const-string v4, "class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "; method: "

    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "; line: "

    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";  Exception: "

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "i":I
    .end local v3    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 223
    .restart local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    .restart local v3    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_2
    sget-object v4, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-object v2
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->saveCrashInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveCrashInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 17
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    invoke-static/range {p1 .. p1}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->getTraceInfo(Ljava/lang/Throwable;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 165
    .local v10, "sb":Ljava/lang/StringBuffer;
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 166
    .local v14, "writer":Ljava/io/Writer;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 167
    .local v8, "printWriter":Ljava/io/PrintWriter;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 168
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 169
    .local v2, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 171
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 175
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, "result":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 179
    .local v12, "timestamp":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->simpleDateFormat1:Ljava/text/SimpleDateFormat;

    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v15 .. v16}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "time":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "crash-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".log"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 184
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/meizu/crash/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 190
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 191
    .local v6, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 192
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "path":Ljava/lang/String;
    .end local v11    # "time":Ljava/lang/String;
    .end local v12    # "timestamp":J
    :cond_2
    :goto_1
    return-object v5

    .line 196
    :catch_0
    move-exception v4

    .line 197
    .local v4, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->TAG:Ljava/lang/String;

    const-string v16, "an error occured while writing file..."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static setError(Ljava/lang/String;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/String;

    .prologue
    .line 234
    return-void
.end method

.method private setFolderPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 88
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p1    # "folderPath":Ljava/lang/String;
    :goto_0
    sput-object p1, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->PATH_LOGCAT:Ljava/lang/String;

    .line 89
    sget-object v1, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->PATH_LOGCAT:Ljava/lang/String;

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    .line 90
    return-void

    .line 88
    .restart local p1    # "folderPath":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .locals 3
    .param p1, "saveDirectoy"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->setFolderPath(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mLogDumper:Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

    iget v1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mPId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;-><init>(Lcom/meizu/smart/wristband/utils/LogcatFileManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mLogDumper:Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mLogDumper:Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startLogcatManager(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "folderPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMF-Logcat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    invoke-static {}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->getInstance()Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->start(Ljava/lang/String;)V

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMF-Logcat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mLogDumper:Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mLogDumper:Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->stopLogs()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mLogDumper:Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;

    .line 116
    :cond_0
    return-void
.end method

.method public stopLogcatManager()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->getInstance()Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->stop()V

    .line 72
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->handleException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 122
    const-string v1, "TEST"

    const-string v2, "defalut"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 126
    :cond_0
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 133
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, ""

    const-string v2, "error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
