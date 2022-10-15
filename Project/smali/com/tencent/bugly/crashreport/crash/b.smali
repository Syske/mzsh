.class public Lcom/tencent/bugly/crashreport/crash/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I


# instance fields
.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/tencent/bugly/proguard/ap;

.field protected final d:Lcom/tencent/bugly/proguard/aj;

.field protected final e:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field protected f:Lcom/tencent/bugly/crashreport/crash/f;

.field protected g:Lcom/tencent/bugly/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/ap;Lcom/tencent/bugly/proguard/aj;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/crashreport/crash/f;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sput p1, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    .line 84
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/ap;

    .line 86
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/aj;

    .line 87
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 88
    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    .line 89
    iput-object p7, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    .line 90
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/bf;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1299
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 1300
    :cond_0
    const-string v1, "rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1334
    :cond_1
    :goto_0
    return-object v0

    .line 1305
    :cond_2
    const-string/jumbo v1, "zip %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1306
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1307
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1309
    const/16 v2, 0x1388

    invoke-static {v1, v3, v2}, Lcom/tencent/bugly/proguard/au;->a(Ljava/io/File;Ljava/io/File;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1310
    const-string/jumbo v1, "zip fail!"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1314
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1317
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    const/16 v4, 0x3e8

    :try_start_1
    new-array v4, v4, [B

    .line 1320
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    .line 1321
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1322
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1330
    :catch_0
    move-exception v1

    .line 1331
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1332
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1336
    :cond_4
    if-eqz v2, :cond_5

    .line 1338
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1346
    :cond_5
    :goto_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    const-string v1, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1348
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1324
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1325
    const-string v1, "read bytes :%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1327
    new-instance v1, Lcom/tencent/bugly/proguard/bf;

    const/4 v5, 0x2

    .line 1328
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4}, Lcom/tencent/bugly/proguard/bf;-><init>(BLjava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1336
    if-eqz v2, :cond_7

    .line 1338
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1346
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1347
    const-string v0, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1348
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_8
    move-object v0, v1

    .line 1329
    goto/16 :goto_0

    .line 1339
    :catch_1
    move-exception v0

    .line 1340
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1339
    :catch_2
    move-exception v1

    .line 1340
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1341
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1336
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_9

    .line 1338
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1346
    :cond_9
    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1347
    const-string v1, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1348
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0

    .line 1339
    :catch_3
    move-exception v1

    .line 1340
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1341
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1336
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1330
    :catch_4
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/bg;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 939
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 940
    :cond_0
    const-string v0, "enExp args == null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v5

    .line 1272
    :goto_0
    return-object v0

    .line 943
    :cond_1
    new-instance v4, Lcom/tencent/bugly/proguard/bg;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/bg;-><init>()V

    .line 944
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v0, :pswitch_data_0

    .line 983
    const-string v0, "crash type error! %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 987
    :goto_1
    iget-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v0, v4, Lcom/tencent/bugly/proguard/bg;->b:J

    .line 988
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->c:Ljava/lang/String;

    .line 989
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->d:Ljava/lang/String;

    .line 990
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->e:Ljava/lang/String;

    .line 991
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->g:Ljava/lang/String;

    .line 992
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->h:Ljava/util/Map;

    .line 993
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->i:Ljava/lang/String;

    .line 994
    iput-object v5, v4, Lcom/tencent/bugly/proguard/bg;->j:Lcom/tencent/bugly/proguard/be;

    .line 995
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->l:Ljava/lang/String;

    .line 996
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->m:Ljava/lang/String;

    .line 997
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->f:Ljava/lang/String;

    .line 998
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->t:Ljava/lang/String;

    .line 1000
    iput-object v5, v4, Lcom/tencent/bugly/proguard/bg;->n:Lcom/tencent/bugly/proguard/bd;

    .line 1001
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->o:Ljava/util/ArrayList;

    .line 1003
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1004
    new-instance v7, Lcom/tencent/bugly/proguard/bd;

    invoke-direct {v7}, Lcom/tencent/bugly/proguard/bd;-><init>()V

    .line 1005
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/bd;->a:Ljava/lang/String;

    .line 1006
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/bd;->c:Ljava/lang/String;

    .line 1007
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/bd;->e:Ljava/lang/String;

    .line 1008
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/bugly/proguard/bd;->b:Ljava/lang/String;

    .line 1009
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 946
    :pswitch_0
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "203"

    :goto_3
    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v0, "103"

    goto :goto_3

    .line 950
    :pswitch_1
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "208"

    :goto_4
    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v0, "108"

    goto :goto_4

    .line 955
    :pswitch_2
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "200"

    :goto_5
    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v0, "100"

    goto :goto_5

    .line 959
    :pswitch_3
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_5

    const-string v0, "201"

    :goto_6
    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v0, "101"

    goto :goto_6

    .line 964
    :pswitch_4
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_6

    const-string v0, "202"

    :goto_7
    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v0, "102"

    goto :goto_7

    .line 969
    :pswitch_5
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_7

    const-string v0, "204"

    :goto_8
    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v0, "104"

    goto :goto_8

    .line 973
    :pswitch_6
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_8

    const-string v0, "206"

    :goto_9
    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v0, "106"

    goto :goto_9

    .line 978
    :pswitch_7
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_9

    const-string v0, "207"

    :goto_a
    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v0, "107"

    goto :goto_a

    .line 1013
    :cond_a
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->p:Ljava/util/ArrayList;

    .line 1015
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1016
    new-instance v7, Lcom/tencent/bugly/proguard/bd;

    invoke-direct {v7}, Lcom/tencent/bugly/proguard/bd;-><init>()V

    .line 1017
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/bd;->a:Ljava/lang/String;

    .line 1018
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/bd;->c:Ljava/lang/String;

    .line 1019
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/bd;->e:Ljava/lang/String;

    .line 1020
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1025
    :cond_b
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_e

    .line 1026
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    iput v0, v4, Lcom/tencent/bugly/proguard/bg;->k:I

    .line 1027
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 1028
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1033
    :cond_c
    :try_start_0
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/proguard/bf;

    const/4 v6, 0x1

    const-string v7, "alltimes.txt"

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string v9, "utf-8"

    .line 1034
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/proguard/bf;-><init>(BLjava/lang/String;[B)V

    .line 1033
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :cond_d
    :goto_c
    const-string v1, "crashcount:%d sz:%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v0, v4, Lcom/tencent/bugly/proguard/bg;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1042
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    .line 1041
    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1045
    :cond_e
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1046
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 1047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1050
    :cond_f
    :try_start_1
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/proguard/bf;

    const/4 v6, 0x1

    const-string v7, "log.txt"

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const-string v9, "utf-8"

    .line 1051
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/proguard/bf;-><init>(BLjava/lang/String;[B)V

    .line 1050
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1059
    :cond_10
    :goto_e
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1060
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 1061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1065
    :cond_11
    :try_start_2
    new-instance v0, Lcom/tencent/bugly/proguard/bf;

    const/4 v1, 0x1

    const-string v6, "crashInfos.txt"

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    const-string v8, "utf-8"

    .line 1066
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/bugly/proguard/bf;-><init>(BLjava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1070
    :goto_f
    if-eqz v0, :cond_12

    .line 1071
    const-string v1, "attach crash infos"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1072
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_12
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1078
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1081
    :cond_13
    const-string v0, "backupRecord.zip"

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    .line 1082
    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/bf;

    move-result-object v0

    .line 1083
    if-eqz v0, :cond_14

    .line 1084
    const-string v1, "attach backup record"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1085
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_14
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    array-length v0, v0

    if-lez v0, :cond_16

    .line 1092
    new-instance v0, Lcom/tencent/bugly/proguard/bf;

    const-string v1, "buglylog.zip"

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    invoke-direct {v0, v10, v1, v6}, Lcom/tencent/bugly/proguard/bf;-><init>(BLjava/lang/String;[B)V

    .line 1094
    if-eqz v0, :cond_16

    .line 1095
    const-string v1, "attach user log"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1096
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 1097
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1099
    :cond_15
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_16
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v11, :cond_19

    .line 1104
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 1105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1108
    :cond_17
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v1, "BUGLY_CR_01"

    .line 1109
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1112
    :try_start_3
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    new-instance v6, Lcom/tencent/bugly/proguard/bf;

    const/4 v7, 0x1

    const-string v8, "anrMessage.txt"

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v9, "BUGLY_CR_01"

    .line 1115
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "utf-8"

    .line 1116
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v7, v8, v0}, Lcom/tencent/bugly/proguard/bf;-><init>(BLjava/lang/String;[B)V

    .line 1113
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    const-string v0, "attach anr message"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1122
    :goto_10
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v1, "BUGLY_CR_01"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    :cond_18
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1127
    const-string v0, "trace.zip"

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 1128
    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/bf;

    move-result-object v0

    .line 1129
    if-eqz v0, :cond_19

    .line 1130
    const-string v1, "attach traces"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1131
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_19
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v3, :cond_1b

    .line 1137
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 1138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1141
    :cond_1a
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 1142
    const-string v0, "tomb.zip"

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 1143
    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/bf;

    move-result-object v0

    .line 1144
    if-eqz v0, :cond_1b

    .line 1145
    const-string v1, "attach tombs"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1146
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    :cond_1b
    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1152
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1155
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1037
    iput-object v5, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    goto/16 :goto_c

    :cond_1d
    move v0, v2

    .line 1042
    goto/16 :goto_d

    .line 1052
    :catch_1
    move-exception v0

    .line 1053
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1054
    iput-object v5, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    goto/16 :goto_e

    .line 1067
    :catch_2
    move-exception v0

    .line 1068
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v5

    goto/16 :goto_f

    .line 1118
    :catch_3
    move-exception v0

    .line 1119
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1120
    iput-object v5, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    goto/16 :goto_10

    .line 1160
    :cond_1e
    :try_start_4
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    new-instance v6, Lcom/tencent/bugly/proguard/bf;

    const/4 v7, 0x1

    const-string v8, "martianlog.txt"

    .line 1161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "utf-8"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v6, v7, v8, v1}, Lcom/tencent/bugly/proguard/bf;-><init>(BLjava/lang/String;[B)V

    .line 1160
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    const-string v0, "attach pageTracingList"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1168
    :cond_1f
    :goto_12
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    array-length v0, v0

    if-lez v0, :cond_21

    .line 1169
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    .line 1173
    :cond_20
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/proguard/bf;

    const-string v6, "userExtraByteData"

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    invoke-direct {v1, v3, v6, v7}, Lcom/tencent/bugly/proguard/bf;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    const-string v0, "attach extraData"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1178
    :cond_21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    .line 1179
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A11"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A23"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A6"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A22"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A24"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A17"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A16"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A25"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A14"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A15"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A13"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->x()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A34"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 1200
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "productIdentify"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :cond_22
    :try_start_5
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A26"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    const-string v8, "utf-8"

    .line 1205
    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1204
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1209
    :goto_13
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v3, :cond_23

    .line 1210
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A27"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A28"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A29"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    :cond_23
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A30"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "A18"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v1, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v6, "A36"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    if-nez v0, :cond_26

    move v0, v3

    :goto_14
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "F02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->v:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "F03"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->w:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "F04"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "F05"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->x:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "F06"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->u:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "F08"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "F09"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "F10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->y:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    if-ltz v0, :cond_24

    .line 1240
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "C01"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    :cond_24
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    if-ltz v0, :cond_25

    .line 1244
    iget-object v0, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    const-string v1, "C02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    :cond_25
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 1248
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1249
    iget-object v7, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "C03_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1163
    :catch_4
    move-exception v0

    .line 1164
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_12

    .line 1206
    :catch_5
    move-exception v0

    .line 1207
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_13

    :cond_26
    move v0, v2

    .line 1218
    goto/16 :goto_14

    .line 1253
    :cond_27
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 1254
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1255
    iget-object v7, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "C04_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1255
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 1261
    :cond_28
    iput-object v5, v4, Lcom/tencent/bugly/proguard/bg;->s:Ljava/util/Map;

    .line 1262
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1263
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/bg;->s:Ljava/util/Map;

    .line 1264
    const-string v0, "setted message size %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/bg;->s:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1266
    :cond_29
    const-string v0, "%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v5, v1, v2

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v5, v1, v3

    .line 1267
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    iget-wide v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1268
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v11

    const/4 v5, 0x4

    iget-boolean v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget-boolean v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    .line 1269
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x6

    iget-boolean v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x7

    iget v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v6, v3, :cond_2a

    .line 1270
    :goto_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x8

    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 1271
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, v4, Lcom/tencent/bugly/proguard/bg;->r:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1266
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    .line 1272
    goto/16 :goto_0

    :cond_2a
    move v3, v2

    .line 1269
    goto :goto_17

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/bh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;",
            "Lcom/tencent/bugly/crashreport/common/info/a;",
            ")",
            "Lcom/tencent/bugly/proguard/bh;"
        }
    .end annotation

    .prologue
    .line 1280
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 1282
    :cond_0
    const-string v0, "enEXPPkg args == null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1283
    const/4 v0, 0x0

    .line 1291
    :goto_0
    return-object v0

    .line 1286
    :cond_1
    new-instance v1, Lcom/tencent/bugly/proguard/bh;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/bh;-><init>()V

    .line 1287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/proguard/bh;->a:Ljava/util/ArrayList;

    .line 1288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 1289
    iget-object v3, v1, Lcom/tencent/bugly/proguard/bh;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, p2}, Lcom/tencent/bugly/crashreport/crash/b;->a(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/bg;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1291
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1451
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 1452
    if-nez v0, :cond_0

    .line 1488
    :goto_0
    return-void

    .line 1455
    :cond_0
    const-string v1, "#++++++++++Record By Bugly++++++++++#"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1456
    const-string v1, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1457
    const-string v1, "# PKG NAME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1458
    const-string v1, "# APP VER: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1459
    const-string v1, "# LAUNCH TIME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    .line 1460
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/tencent/bugly/proguard/au;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1459
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1461
    const-string v1, "# CRASH TYPE: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1462
    const-string v1, "# CRASH TIME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1463
    const-string v1, "# CRASH PROCESS: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1464
    if-eqz p3, :cond_1

    .line 1465
    const-string v1, "# CRASH THREAD: %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1467
    :cond_1
    if-eqz p5, :cond_2

    .line 1468
    const-string v1, "# REPORT ID: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1469
    const-string v1, "# CRASH DEVICE: %s %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 1470
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->x()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ROOTED"

    :goto_1
    aput-object v0, v2, v7

    .line 1469
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1471
    const-string v0, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 1472
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1471
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1473
    const-string v0, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 1474
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1473
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1475
    iget-object v0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1476
    const-string v0, "# EXCEPTION FIRED BY %s %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1483
    :cond_2
    :goto_2
    invoke-static {p4}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1484
    const-string v0, "# CRASH STACK: "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1485
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1487
    :cond_3
    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1470
    :cond_4
    const-string v0, "UNROOT"

    goto :goto_1

    .line 1478
    :cond_5
    iget v0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v9, :cond_2

    .line 1479
    const-string v1, "# EXCEPTION ANR MESSAGE:\n %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-nez v0, :cond_6

    const-string v0, "null"

    .line 1480
    :goto_3
    aput-object v0, v2, v6

    .line 1479
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v4, "BUGLY_CR_01"

    .line 1480
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1363
    :try_start_0
    const-string v2, "save eup logs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1364
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    .line 1365
    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v3

    .line 1366
    iget-object v4, v2, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 1367
    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 1368
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "#--------\npackage:%s\nversion:%s\nsdk:%s\nprocess:%s\ndate:%s\ntype:%s\nmessage:%s\nstack:\n%s\neupID:%s\n"

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    aput-object v4, v8, v3

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "2.4.0"

    aput-object v2, v8, v3

    const/4 v2, 0x3

    aput-object v5, v8, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1371
    invoke-static {v3}, Lcom/tencent/bugly/proguard/au;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v3, v8, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    aput-object v3, v8, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    aput-object v3, v8, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v3, v8, v2

    .line 1368
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1374
    const/4 v2, 0x0

    .line 1375
    sget-object v4, Lcom/tencent/bugly/crashreport/crash/c;->i:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1377
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1378
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/Tencent/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1388
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/euplog.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1389
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    sget v5, Lcom/tencent/bugly/crashreport/crash/c;->j:I

    invoke-static {v4, v2, v3, v5}, Lcom/tencent/bugly/proguard/au;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1397
    :goto_1
    return v0

    .line 1382
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/tencent/bugly/crashreport/crash/c;->i:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1384
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1386
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1391
    :catch_0
    move-exception v2

    .line 1392
    const-string v3, "rqdp{  save error} %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1393
    invoke-static {v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1394
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move v0, v1

    .line 1397
    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 690
    if-nez p1, :cond_1

    move-object v0, v1

    .line 709
    :cond_0
    :goto_0
    return-object v0

    .line 694
    :cond_1
    :try_start_0
    const-string v0, "_dt"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 695
    if-nez v0, :cond_2

    move-object v0, v1

    .line 696
    goto :goto_0

    .line 698
    :cond_2
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 699
    sget-object v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/au;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 700
    if-eqz v0, :cond_0

    .line 701
    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 706
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 709
    goto :goto_0
.end method

.method protected a(Ljava/util/List;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 123
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v1, p2

    .line 193
    :cond_1
    :goto_0
    return-object v1

    .line 127
    :cond_2
    const/4 v1, 0x0

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 132
    iget-boolean v5, v0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-eqz v5, :cond_3

    .line 133
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 139
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 140
    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 141
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v3

    .line 142
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 143
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 144
    if-nez v2, :cond_5

    .line 142
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 148
    :cond_5
    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-nez v5, :cond_6

    move-object v0, v1

    .line 149
    goto :goto_3

    .line 153
    :cond_6
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    if-nez v5, :cond_7

    move-object v0, v1

    .line 155
    goto :goto_3

    .line 158
    :cond_7
    array-length v6, v5

    move v0, v3

    :goto_4
    if-ge v0, v6, :cond_d

    aget-object v7, v5, v0

    .line 159
    iget-object v8, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 160
    iget v8, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 158
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move-object v0, v1

    .line 169
    :goto_5
    if-nez v0, :cond_c

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    .line 173
    iput v3, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 174
    const-string v0, ""

    iput-object v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    move-object v1, p2

    .line 178
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 179
    iget-boolean v3, v0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-nez v3, :cond_a

    iget-boolean v3, v0, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-nez v3, :cond_a

    iget-object v3, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 181
    iget v3, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto :goto_7

    .line 186
    :cond_b
    iget-wide v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v4, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    goto/16 :goto_6

    :cond_d
    move-object v0, v1

    goto/16 :goto_3

    :cond_e
    move-object v0, v1

    goto/16 :goto_5
.end method

.method public a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v12, 0x5265c00

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 317
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 318
    if-nez v1, :cond_1

    .line 319
    const-string v1, "have not synced remote!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v1, :cond_2

    .line 324
    const-string v1, "Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 327
    const-string v1, "[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 334
    invoke-static {}, Lcom/tencent/bugly/proguard/au;->b()J

    move-result-wide v4

    .line 337
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 343
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 347
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 349
    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sget-wide v10, Lcom/tencent/bugly/crashreport/crash/c;->f:J

    sub-long v10, v4, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 351
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 352
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    :cond_4
    iget-boolean v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-eqz v8, :cond_6

    .line 357
    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sub-long v10, v2, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 359
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 361
    :cond_5
    iget-boolean v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-nez v8, :cond_3

    .line 363
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 364
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    :cond_6
    iget v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->f:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sub-long v10, v2, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 369
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 370
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 374
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 375
    invoke-virtual {p0, v6}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 379
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 383
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 384
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 385
    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 386
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 387
    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 388
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 389
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 394
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 395
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/crashreport/crash/b;->d(Ljava/util/List;)V

    :cond_b
    move-object v0, v1

    .line 398
    goto/16 :goto_0
.end method

.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 103
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 106
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 108
    iget-boolean v5, v0, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-eqz v5, :cond_2

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    const-wide/32 v8, 0x5265c00

    sub-long v8, v2, v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 113
    goto :goto_0
.end method

.method public a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 405
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Z

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "try to upload right now"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    move v5, v7

    :goto_0
    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;JZZZ)V

    .line 414
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    iget v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v1, v7, :cond_2

    :goto_1
    invoke-interface {v0, v7}, Lcom/tencent/bugly/crashreport/crash/f;->b(Z)Z

    .line 418
    :cond_0
    return-void

    :cond_1
    move v5, v8

    .line 411
    goto :goto_0

    :cond_2
    move v7, v8

    .line 415
    goto :goto_1
.end method

.method public a(Ljava/util/List;JZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;JZZZ)V"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->g:Z

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/ap;

    if-eqz v0, :cond_0

    .line 432
    if-nez p6, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/ap;

    sget v1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ap;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 437
    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v1, :cond_3

    .line 438
    const-string v0, "remote report is disable!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 439
    const-string v0, "[crash] server closed bugly in this app. please check your appid if is correct, and re-install it"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/ap;

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/ap;->d:Z

    if-eqz v1, :cond_4

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 449
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/ap;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ap;->d:Z

    if-eqz v0, :cond_5

    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    .line 451
    :goto_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/ap;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ap;->d:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x33e

    .line 454
    :goto_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    .line 455
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/tencent/bugly/crashreport/crash/b;->a(Landroid/content/Context;Ljava/util/List;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/bh;

    move-result-object v1

    .line 456
    if-nez v1, :cond_7

    .line 457
    const-string v0, "create eupPkg fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "req cr error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 489
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 448
    :cond_4
    :try_start_1
    iget-object v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    goto :goto_1

    .line 449
    :cond_5
    sget-object v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    goto :goto_2

    .line 451
    :cond_6
    const/16 v0, 0x276

    goto :goto_3

    .line 460
    :cond_7
    invoke-static {v1}, Lcom/tencent/bugly/proguard/am;->a(Lcom/tencent/bugly/proguard/m;)[B

    move-result-object v1

    .line 461
    if-nez v1, :cond_8

    .line 462
    const-string v0, "send encode fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 465
    :cond_8
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/tencent/bugly/proguard/am;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/bi;

    move-result-object v2

    .line 466
    if-nez v2, :cond_9

    .line 467
    const-string v0, "request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 470
    :cond_9
    new-instance v5, Lcom/tencent/bugly/crashreport/crash/b$1;

    invoke-direct {v5, p0, p1}, Lcom/tencent/bugly/crashreport/crash/b$1;-><init>(Lcom/tencent/bugly/crashreport/crash/b;Ljava/util/List;)V

    .line 481
    if-eqz p4, :cond_a

    .line 482
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/ap;

    sget v1, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    move-wide v6, p2

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/bugly/proguard/ap;->a(ILcom/tencent/bugly/proguard/bi;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;JZ)V

    goto/16 :goto_0

    .line 485
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/ap;

    sget v1, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/proguard/ap;->a(ILcom/tencent/bugly/proguard/bi;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(ZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 503
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 504
    const-string v0, "up finish update state %b"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 505
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 506
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 508
    const-string v2, "pre uid:%s uc:%d re:%b me:%b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 509
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    .line 508
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 511
    iget v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    .line 512
    iput-boolean p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 513
    const-string v2, "set uid:%s uc:%d re:%b me:%b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 514
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    .line 513
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 517
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_1

    .line 519
    :cond_1
    const-string v0, "update state size %d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 521
    :cond_2
    if-nez p1, :cond_3

    .line 522
    const-string v0, "[crash] upload fail."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 524
    :cond_3
    return-void
.end method

.method public a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .locals 1

    .prologue
    .line 197
    const v0, -0x75bcd15

    invoke-virtual {p0, p1, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;I)Z
    .locals 12

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 209
    :cond_0
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    const-string v0, "Crash filter for crash stack is: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/bugly/crashreport/crash/c;->l:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/crashreport/crash/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const-string v0, "This crash contains the filter string set. It will not be record and upload."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    const-string v0, "Crash regular filter for crash stack is: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 221
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const-string v0, "This crash matches the regular filter string set. It will not be record and upload."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 224
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :cond_2
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    .line 228
    :goto_1
    iget-object v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 229
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 230
    iget-object v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 232
    iget-wide v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 233
    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 234
    iget-object v9, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 235
    iget-object v10, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    iget-object v11, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    move v5, p2

    invoke-interface/range {v0 .. v11}, Lcom/tencent/bugly/crashreport/crash/f;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 240
    if-nez v0, :cond_4

    .line 241
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 227
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 246
    :cond_4
    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 247
    new-instance v0, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/al;-><init>()V

    .line 248
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/bugly/proguard/al;->b:I

    .line 249
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/al;->c:Ljava/lang/String;

    .line 250
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    .line 251
    iget-wide v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/al;->e:J

    .line 253
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/aj;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/aj;->b(I)V

    .line 254
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/al;)Z

    .line 255
    const-string v0, "[crash] a crash occur, handling..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 260
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    .line 261
    const/4 v0, 0x0

    .line 262
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 270
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->c:Z

    if-eqz v0, :cond_c

    .line 273
    const/4 v0, 0x0

    .line 274
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 275
    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object v6, v0, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 276
    iget-boolean v5, v0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-eqz v5, :cond_5

    .line 277
    const/4 v1, 0x1

    .line 279
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v0, v1

    move v1, v0

    .line 281
    goto :goto_3

    .line 257
    :cond_7
    const-string v0, "[crash] a caught exception occur, handling..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 283
    :cond_8
    if-nez v1, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    .line 286
    :cond_9
    const-string v0, "same crash occur too much do merged!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p0, v3, p1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v1

    .line 288
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 289
    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    iget-wide v6, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    .line 290
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 293
    :cond_b
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 294
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 295
    const-string v0, "[crash] save crash success. For this device crash many times, it will not upload crashes immediately"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 297
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    move-object v0, v2

    .line 303
    :cond_d
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 304
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 305
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 307
    :cond_e
    const-string v0, "[crash] save crash success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 308
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected b(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 801
    if-nez p1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-object v0

    .line 806
    :cond_1
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/a;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/crash/a;-><init>()V

    .line 807
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    .line 808
    const-string v4, "_tm"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    .line 809
    const-string v4, "_s1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    .line 810
    const-string v4, "_up"

    .line 811
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    :goto_1
    iput-boolean v4, v1, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    .line 812
    const-string v4, "_me"

    .line 813
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_2
    iput-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    .line 814
    const-string v2, "_uc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 815
    goto :goto_0

    :cond_2
    move v4, v3

    .line 811
    goto :goto_1

    :cond_3
    move v2, v3

    .line 813
    goto :goto_2

    .line 816
    :catch_0
    move-exception v1

    .line 817
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 818
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 828
    .line 829
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 831
    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_tm"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_s1"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_up"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_me"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_uc"

    aput-object v1, v2, v0

    .line 833
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 835
    if-nez v6, :cond_1

    .line 868
    if-eqz v6, :cond_0

    .line 869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    .line 873
    :goto_0
    return-object v0

    .line 838
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 840
    invoke-virtual {p0, v6}, Lcom/tencent/bugly/crashreport/crash/b;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;

    move-result-object v1

    .line 841
    if-eqz v1, :cond_4

    .line 842
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 863
    :catch_0
    move-exception v0

    move-object v7, v6

    .line 864
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 865
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 868
    :cond_2
    if-eqz v7, :cond_3

    .line 869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 873
    goto :goto_0

    .line 846
    :cond_4
    :try_start_3
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 847
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 848
    :catch_1
    move-exception v1

    .line 849
    :try_start_4
    const-string v1, "unknown id!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 868
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    .line 869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 855
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 857
    const-string v1, " or "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 858
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)I

    move-result v0

    .line 860
    const-string v1, "deleted %s illegle data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 868
    :cond_7
    if-eqz v6, :cond_8

    .line 869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v8

    .line 862
    goto/16 :goto_0

    .line 868
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v7

    goto :goto_3

    .line 863
    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 736
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 794
    :goto_0
    return-object v0

    .line 740
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 742
    const-string v2, " or "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 745
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 747
    const-string v0, " or "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 749
    :cond_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 753
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 755
    if-nez v8, :cond_5

    .line 789
    if-eqz v8, :cond_4

    .line 790
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    .line 756
    goto :goto_0

    .line 759
    :cond_5
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 760
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 761
    invoke-virtual {p0, v8}, Lcom/tencent/bugly/crashreport/crash/b;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 762
    if-eqz v0, :cond_8

    .line 763
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 784
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 785
    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 786
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 789
    :cond_6
    if-eqz v1, :cond_7

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v7

    .line 794
    goto/16 :goto_0

    .line 767
    :cond_8
    :try_start_3
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 768
    const-string v2, " or "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 769
    :catch_1
    move-exception v0

    .line 770
    :try_start_4
    const-string v0, "unknown id!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 789
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_9

    .line 790
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 776
    :cond_a
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 778
    const-string v1, " or "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 779
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)I

    move-result v0

    .line 781
    const-string v1, "deleted %s illegle data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 789
    :cond_b
    if-eqz v8, :cond_c

    .line 790
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v0, v6

    .line 783
    goto/16 :goto_0

    .line 789
    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 784
    :catch_2
    move-exception v0

    move-object v1, v7

    goto/16 :goto_3
.end method

.method public b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 17

    .prologue
    .line 530
    if-nez p1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    if-eqz v2, :cond_0

    .line 537
    :cond_2
    :try_start_0
    const-string v2, "[crash callback] start user\'s callback:onCrashHandleStart()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 541
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 552
    :pswitch_0
    const/4 v2, 0x0

    move v12, v2

    .line 570
    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v3, 0x1

    .line 572
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 573
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 574
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 575
    const v7, -0x499602d2

    .line 576
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 579
    const/4 v10, 0x0

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    if-eqz v2, :cond_6

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    invoke-interface {v2, v3}, Lcom/tencent/bugly/crashreport/crash/f;->a(Z)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    invoke-interface/range {v2 .. v9}, Lcom/tencent/bugly/crashreport/crash/f;->b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v11

    .line 585
    if-eqz v11, :cond_d

    .line 586
    new-instance v2, Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 587
    const-string v10, "userData"

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :goto_3
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 598
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    .line 599
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 600
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 604
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 605
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v14, 0x64

    if-le v11, v14, :cond_4

    .line 607
    const/4 v11, 0x0

    const/16 v14, 0x64

    invoke-virtual {v10, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 608
    const-string v11, "setted key length is over limit %d substring to %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x64

    .line 609
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    .line 608
    invoke-static {v11, v14}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    move-object v11, v10

    .line 613
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 614
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v14, 0x7530

    if-le v10, v14, :cond_7

    .line 615
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0x7530

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 617
    const-string v10, "setted %s value length is over limit %d substring"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x7530

    .line 618
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 617
    invoke-static {v10, v14}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 623
    :goto_5
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v10, "add setted key %s value size:%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v11

    invoke-static {v10, v14}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 649
    :catch_0
    move-exception v2

    .line 650
    const-string v3, "crash handle callback somthing wrong! %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 651
    invoke-static {v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 652
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 543
    :pswitch_1
    const/4 v2, 0x4

    move v12, v2

    .line 544
    goto/16 :goto_1

    .line 546
    :pswitch_2
    const/4 v2, 0x7

    move v12, v2

    .line 547
    goto/16 :goto_1

    .line 549
    :pswitch_3
    const/4 v2, 0x1

    move v12, v2

    .line 550
    goto/16 :goto_1

    .line 555
    :pswitch_4
    const/4 v2, 0x2

    move v12, v2

    .line 556
    goto/16 :goto_1

    .line 558
    :pswitch_5
    const/4 v2, 0x3

    move v12, v2

    .line 559
    goto/16 :goto_1

    .line 561
    :pswitch_6
    const/4 v2, 0x5

    move v12, v2

    .line 562
    goto/16 :goto_1

    .line 564
    :pswitch_7
    const/4 v2, 0x6

    move v12, v2

    .line 565
    goto/16 :goto_1

    .line 570
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 589
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-eqz v2, :cond_c

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v2, v12, v10, v11, v13}, Lcom/tencent/bugly/BuglyStrategy$a;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_3

    .line 620
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 628
    :cond_8
    const-string v2, "[crash callback] start user\'s callback:onCrashHandleStart2GetExtraDatas()"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v10}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 631
    const/4 v2, 0x0

    .line 633
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    if-eqz v10, :cond_b

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/crashreport/crash/f;

    invoke-interface/range {v2 .. v9}, Lcom/tencent/bugly/crashreport/crash/f;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)[B

    move-result-object v2

    .line 640
    :cond_9
    :goto_6
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    .line 641
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    if-eqz v2, :cond_0

    .line 642
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    array-length v2, v2

    const/16 v3, 0x7530

    if-le v2, v3, :cond_a

    .line 643
    const-string v2, "extra bytes size %d is over limit %d will drop over part"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    array-length v5, v5

    .line 644
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x7530

    .line 645
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 643
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 647
    :cond_a
    const-string v2, "add extra bytes %d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 636
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-eqz v3, :cond_9

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v2, v12, v3, v4, v5}, Lcom/tencent/bugly/BuglyStrategy$a;->onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_6

    :cond_c
    move-object v2, v10

    goto/16 :goto_3

    :cond_d
    move-object v2, v10

    goto/16 :goto_3

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method protected c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 662
    if-nez p1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-object v0

    .line 667
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 668
    iget-wide v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 669
    const-string v4, "_id"

    iget-wide v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 671
    :cond_2
    const-string v4, "_tm"

    iget-wide v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 672
    const-string v4, "_s1"

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v5, "_up"

    iget-boolean v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    const-string v4, "_me"

    iget-boolean v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    const-string v2, "_uc"

    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    const-string v2, "_dt"

    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 677
    goto :goto_0

    :cond_3
    move v4, v3

    .line 673
    goto :goto_1

    :cond_4
    move v2, v3

    .line 674
    goto :goto_2

    .line 678
    :catch_0
    move-exception v1

    .line 679
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 880
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/a;

    .line 886
    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 889
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 890
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 891
    const-string v0, " or "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 893
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 895
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)I

    move-result v0

    .line 897
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 716
    if-nez p1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;

    move-result-object v0

    .line 720
    if-eqz v0, :cond_2

    .line 721
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v1

    const-string v2, "t_cr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/ai;Z)J

    move-result-wide v0

    .line 722
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 723
    const-string v2, "insert %s success!"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "t_cr"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 724
    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    .line 727
    :cond_2
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->h:Z

    if-eqz v0, :cond_0

    .line 728
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    goto :goto_0
.end method

.method public d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 910
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 916
    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 927
    :catch_0
    move-exception v0

    .line 928
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 929
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 919
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 921
    const-string v0, " or "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 923
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 924
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)I

    move-result v0

    .line 926
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
