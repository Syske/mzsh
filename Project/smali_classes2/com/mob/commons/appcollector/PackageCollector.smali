.class public Lcom/mob/commons/appcollector/PackageCollector;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/mob/commons/appcollector/PackageCollector;


# instance fields
.field private final a:[Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/mob/tools/utils/DeviceHelper;

.field private e:Lcom/mob/tools/utils/Hashon;

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->d:Lcom/mob/tools/utils/DeviceHelper;

    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->e:Lcom/mob/tools/utils/Hashon;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/appcollector/PackageCollector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v7, "pkg"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v4

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/mob/commons/appcollector/a;

    invoke-direct {v0, p0}, Lcom/mob/commons/appcollector/a;-><init>(Lcom/mob/commons/appcollector/PackageCollector;)V

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/mob/commons/appcollector/c;

    invoke-direct {v2, p0}, Lcom/mob/commons/appcollector/c;-><init>(Lcom/mob/commons/appcollector/PackageCollector;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->f:Landroid/os/Handler;

    return-void
.end method

.method private a(J)V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comm/dbs/.nulal"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "list"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "datetime"

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/commons/g;->a(Landroid/content/Context;)Lcom/mob/commons/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/commons/g;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comm/dbs/.al"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mob/commons/appcollector/PackageCollector;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/mob/commons/appcollector/PackageCollector;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getInstalledApp(Z)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "APPS_ALL"

    invoke-direct {p0, v1, v0}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->f(Landroid/content/Context;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->d()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2, v4}, Lcom/mob/tools/utils/DeviceHelper;->getInstalledApp(Z)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "APPS_ALL"

    invoke-direct {p0, v3, v2}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->f(Landroid/content/Context;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->f()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mob/commons/appcollector/PackageCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->b()V

    return-void
.end method

.method private c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "comm/dbs/.al"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/mob/commons/appcollector/PackageCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->e()V

    return-void
.end method

.method private d()J
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comm/dbs/.nulal"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/mob/commons/appcollector/PackageCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->f()V

    return-void
.end method

.method static synthetic e(Lcom/mob/commons/appcollector/PackageCollector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 3

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v2, v2, Lcom/mob/commons/appcollector/PackageCollector;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v2, v2, Lcom/mob/commons/appcollector/PackageCollector;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "package"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    new-instance v2, Lcom/mob/commons/appcollector/d;

    invoke-direct {v2, p0}, Lcom/mob/commons/appcollector/d;-><init>(Lcom/mob/commons/appcollector/PackageCollector;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f()V
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->d:Lcom/mob/tools/utils/DeviceHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstalledApp(Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "APPS_ALL"

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->f(Landroid/content/Context;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(J)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "APPS_INCR"

    invoke-direct {p0, v3, v2}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "UNINSTALL"

    invoke-direct {p0, v2, v0}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->f(Landroid/content/Context;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(J)V

    goto :goto_0
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/mob/commons/appcollector/PackageCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/appcollector/PackageCollector;->startCollector(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized startCollector(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/mob/commons/appcollector/PackageCollector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/commons/appcollector/PackageCollector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/commons/appcollector/PackageCollector;

    invoke-direct {v0, p0}, Lcom/mob/commons/appcollector/PackageCollector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/commons/appcollector/PackageCollector;

    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-direct {v0}, Lcom/mob/commons/appcollector/PackageCollector;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
