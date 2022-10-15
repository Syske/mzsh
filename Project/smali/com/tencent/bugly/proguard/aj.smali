.class public Lcom/tencent/bugly/proguard/aj;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/aj$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Lcom/tencent/bugly/proguard/aj;

.field private static c:Lcom/tencent/bugly/proguard/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/tencent/bugly/proguard/aj;->b:Lcom/tencent/bugly/proguard/aj;

    .line 30
    sput-object v0, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/ak;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/aj;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)I
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    const/4 v0, 0x0

    .line 213
    const/4 v2, 0x0

    .line 215
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 224
    :cond_0
    if-eqz p4, :cond_1

    .line 225
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 227
    :cond_1
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 221
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    :cond_3
    if-eqz p4, :cond_4

    .line 225
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 227
    :cond_4
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :catchall_1
    move-exception v1

    if-eqz p4, :cond_5

    .line 225
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 227
    :cond_5
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 228
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/aj;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/ai;)J
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/ai;)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/ai;)J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 157
    monitor-enter p0

    const-wide/16 v6, 0x0

    .line 158
    const/4 v3, 0x0

    .line 160
    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 161
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 162
    const-string v2, "_id"

    invoke-virtual {v3, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 163
    cmp-long v2, v4, v0

    if-ltz v2, :cond_3

    .line 164
    const-string v2, "[Database] insert %s success."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v2, v8}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    move-wide v0, v4

    .line 175
    :cond_0
    if-eqz p3, :cond_1

    .line 176
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 178
    :cond_1
    sget-boolean v2, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 179
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_2
    :goto_1
    monitor-exit p0

    return-wide v0

    .line 166
    :cond_3
    :try_start_2
    const-string v2, "[Database] replace %s error."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v2, v8}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    :try_start_3
    invoke-static {v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 172
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    :cond_4
    if-eqz p3, :cond_5

    .line 176
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 178
    :cond_5
    sget-boolean v2, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 179
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :catchall_1
    move-exception v0

    if-eqz p3, :cond_6

    .line 176
    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 178
    :cond_6
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    .line 179
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/aj;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/proguard/aj;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)Landroid/database/Cursor;
    .locals 12

    .prologue
    .line 188
    monitor-enter p0

    const/4 v11, 0x0

    .line 191
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 194
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 202
    :goto_0
    if-eqz p10, :cond_0

    .line 203
    :try_start_1
    move-object/from16 v0, p10

    invoke-interface {v0, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v1

    .line 197
    :catch_0
    move-exception v1

    .line 198
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :cond_1
    if-eqz p10, :cond_3

    .line 203
    :try_start_3
    move-object/from16 v0, p10

    invoke-interface {v0, v11}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    move-object v1, v11

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v1

    if-eqz p10, :cond_2

    .line 203
    move-object/from16 v0, p10

    invoke-interface {v0, v11}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    move-object v1, v11

    goto :goto_1

    :cond_4
    move-object v1, v11

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/aj;
    .locals 2

    .prologue
    .line 54
    const-class v0, Lcom/tencent/bugly/proguard/aj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/aj;->b:Lcom/tencent/bugly/proguard/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/aj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/a;",
            ">;)",
            "Lcom/tencent/bugly/proguard/aj;"
        }
    .end annotation

    .prologue
    .line 47
    const-class v1, Lcom/tencent/bugly/proguard/aj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/aj;->b:Lcom/tencent/bugly/proguard/aj;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/tencent/bugly/proguard/aj;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/proguard/aj;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->b:Lcom/tencent/bugly/proguard/aj;

    .line 50
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/aj;->b:Lcom/tencent/bugly/proguard/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILcom/tencent/bugly/proguard/ai;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/ai;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/aj;->c(I)Ljava/util/List;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al;

    .line 322
    iget-object v3, v0, Lcom/tencent/bugly/proguard/al;->g:[B

    .line 323
    if-eqz v3, :cond_0

    .line 324
    iget-object v0, v0, Lcom/tencent/bugly/proguard/al;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 328
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 329
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 332
    :cond_1
    if-eqz p2, :cond_2

    .line 333
    invoke-interface {p2, v0}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 336
    :cond_2
    :goto_2
    return-object v0

    .line 332
    :cond_3
    if-eqz p2, :cond_5

    .line 333
    invoke-interface {p2, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    .line 332
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz p2, :cond_4

    .line 333
    invoke-interface {p2, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    :cond_4
    throw v0

    .line 332
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 327
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/aj;->a(ILcom/tencent/bugly/proguard/ai;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ILjava/lang/String;Lcom/tencent/bugly/proguard/ai;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 656
    monitor-enter p0

    const/4 v4, 0x0

    .line 659
    :try_start_0
    sget-object v3, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 660
    if-eqz v2, :cond_0

    .line 662
    invoke-static {p2}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    :goto_0
    const-string v5, "t_pf"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 670
    const-string v5, "[Database] deleted %s data %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "t_pf"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 671
    if-lez v3, :cond_4

    :goto_1
    move v1, v0

    .line 678
    :cond_0
    if-eqz p3, :cond_1

    .line 679
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 681
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 682
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    :cond_2
    :goto_2
    monitor-exit p0

    return v1

    .line 665
    :cond_3
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_tp"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    goto :goto_0

    :cond_4
    move v0, v1

    .line 671
    goto :goto_1

    .line 673
    :catch_0
    move-exception v0

    .line 674
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 675
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 678
    :cond_5
    if-eqz p3, :cond_6

    .line 679
    :try_start_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 681
    :cond_6
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 682
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 678
    :catchall_1
    move-exception v0

    if-eqz p3, :cond_7

    .line 679
    :try_start_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 681
    :cond_7
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 682
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/ai;)Z
    .locals 4

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 298
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/al;-><init>()V

    .line 299
    int-to-long v2, p1

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/al;->a:J

    .line 300
    iput-object p2, v1, Lcom/tencent/bugly/proguard/al;->f:Ljava/lang/String;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/al;->e:J

    .line 302
    iput-object p3, v1, Lcom/tencent/bugly/proguard/al;->g:[B

    .line 303
    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/aj;->d(Lcom/tencent/bugly/proguard/al;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 309
    if-eqz p4, :cond_0

    .line 310
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :cond_1
    if-eqz p4, :cond_0

    .line 310
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v1

    if-eqz p4, :cond_2

    .line 310
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/tencent/bugly/proguard/ai;->a(Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/aj;ILjava/lang/String;Lcom/tencent/bugly/proguard/ai;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/aj;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/ai;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/aj;ILjava/lang/String;[BLcom/tencent/bugly/proguard/ai;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/aj;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/ai;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/al;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 596
    monitor-enter p0

    const/4 v1, 0x0

    .line 599
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .line 600
    if-eqz v0, :cond_d

    .line 601
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 602
    const-string v1, "t_pf"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 603
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v2

    .line 604
    if-nez v2, :cond_2

    .line 639
    if-eqz v2, :cond_0

    .line 640
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    move-object v0, v8

    .line 646
    :goto_0
    monitor-exit p0

    return-object v0

    .line 608
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 611
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/aj;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/al;

    move-result-object v5

    .line 612
    if-eqz v5, :cond_6

    .line 613
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 634
    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 635
    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 636
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 639
    :cond_3
    if-eqz v2, :cond_4

    .line 640
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_4
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 643
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :goto_3
    move-object v0, v8

    .line 646
    goto :goto_0

    .line 617
    :cond_6
    :try_start_6
    const-string v5, "_tp"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 618
    const-string v6, " or "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_tp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 619
    :catch_1
    move-exception v5

    .line 620
    :try_start_7
    const-string v5, "[Database] unknown id."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 639
    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_7

    .line 640
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_7
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_8

    if-eqz v8, :cond_8

    .line 643
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 596
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 626
    :cond_9
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 627
    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    const-string v4, " or "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 629
    const-string v4, "t_pf"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 630
    const-string v4, "[Database] deleted %s illegal data %d."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_pf"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 639
    :cond_a
    if-eqz v2, :cond_b

    .line 640
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_b
    sget-boolean v2, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    .line 643
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    move-object v0, v1

    .line 632
    goto/16 :goto_0

    .line 639
    :cond_d
    if-eqz v8, :cond_e

    .line 640
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_e
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 643
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    .line 639
    :catchall_2
    move-exception v0

    move-object v2, v8

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 634
    :catch_2
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_2
.end method

.method private declared-synchronized d(Lcom/tencent/bugly/proguard/al;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 383
    monitor-enter p0

    if-nez p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 386
    :cond_1
    const/4 v2, 0x0

    .line 388
    :try_start_0
    sget-object v3, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_4

    .line 390
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/aj;->c(Lcom/tencent/bugly/proguard/al;)Landroid/content/ContentValues;

    move-result-object v3

    .line 391
    if-eqz v3, :cond_4

    .line 392
    const-string v4, "t_pf"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 393
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 394
    const-string v3, "[Database] insert %s success."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "t_pf"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 395
    iput-wide v4, p1, Lcom/tencent/bugly/proguard/al;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 409
    :try_start_1
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move v0, v1

    .line 396
    goto :goto_0

    .line 409
    :cond_3
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 409
    :cond_4
    :try_start_2
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    :try_start_3
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 405
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 409
    :cond_5
    :try_start_4
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 409
    :catchall_1
    move-exception v0

    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 410
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)I
    .locals 2

    .prologue
    .line 139
    if-nez p5, :cond_0

    .line 140
    new-instance v0, Lcom/tencent/bugly/proguard/aj$a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p4}, Lcom/tencent/bugly/proguard/aj$a;-><init>(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)V

    .line 141
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/aj$a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/ai;Z)J
    .locals 2

    .prologue
    .line 68
    if-nez p4, :cond_0

    .line 69
    new-instance v0, Lcom/tencent/bugly/proguard/aj$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p3}, Lcom/tencent/bugly/proguard/aj$a;-><init>(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)V

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/aj$a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 71
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 72
    const-wide/16 v0, 0x0

    .line 74
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/ai;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)Landroid/database/Cursor;
    .locals 12

    .prologue
    .line 91
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Lcom/tencent/bugly/proguard/aj;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 115
    if-nez p11, :cond_0

    .line 116
    new-instance v1, Lcom/tencent/bugly/proguard/aj$a;

    const/4 v2, 0x3

    move-object/from16 v0, p10

    invoke-direct {v1, p0, v2, v0}, Lcom/tencent/bugly/proguard/aj$a;-><init>(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 117
    invoke-virtual/range {v1 .. v10}, Lcom/tencent/bugly/proguard/aj$a;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 120
    const/4 v1, 0x0

    .line 122
    :goto_0
    return-object v1

    :cond_0
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/proguard/aj;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ai;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/al;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 569
    if-nez p1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-object v0

    .line 573
    :cond_1
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/al;-><init>()V

    .line 574
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/al;->a:J

    .line 575
    const-string v2, "_tp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/al;->b:I

    .line 576
    const-string v2, "_pc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/al;->c:Ljava/lang/String;

    .line 577
    const-string v2, "_th"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    .line 578
    const-string v2, "_tm"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/al;->e:J

    .line 579
    const-string v2, "_dt"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/al;->g:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 580
    goto :goto_0

    .line 581
    :catch_0
    move-exception v1

    .line 582
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized a(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/al;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 421
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 422
    if-eqz v0, :cond_6

    .line 425
    if-ltz p1, :cond_2

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_tp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    :goto_0
    const-string v1, "t_lr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 427
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 429
    if-nez v2, :cond_3

    .line 464
    if-eqz v2, :cond_0

    .line 465
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    move-object v0, v8

    .line 473
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    move-object v3, v8

    .line 425
    goto :goto_0

    .line 433
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 436
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/aj;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/al;

    move-result-object v4

    .line 437
    if-eqz v4, :cond_7

    .line 438
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 459
    :catch_0
    move-exception v1

    .line 460
    :goto_3
    :try_start_4
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 461
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 464
    :cond_4
    if-eqz v2, :cond_5

    .line 465
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_5
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 468
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move-object v0, v8

    .line 473
    goto :goto_1

    .line 442
    :cond_7
    :try_start_6
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 443
    const-string v6, " or "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 444
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 445
    :catch_1
    move-exception v4

    .line 446
    :try_start_7
    const-string v4, "[Database] unknown id."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 464
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v2, :cond_8

    .line 465
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_8
    sget-boolean v2, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 468
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 421
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 452
    :cond_a
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 454
    const-string v4, " or "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 455
    const-string v4, "t_lr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 456
    const-string v4, "[Database] deleted %s illegal data %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_lr"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 464
    :cond_b
    if-eqz v2, :cond_c

    .line 465
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_c
    sget-boolean v2, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v2, :cond_d

    if-eqz v0, :cond_d

    .line 468
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_d
    move-object v0, v1

    .line 458
    goto/16 :goto_1

    .line 464
    :catchall_2
    move-exception v1

    move-object v2, v8

    goto :goto_4

    .line 459
    :catch_2
    move-exception v1

    move-object v2, v8

    goto/16 :goto_3
.end method

.method public a(ILcom/tencent/bugly/proguard/ai;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/ai;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 264
    if-nez p3, :cond_0

    .line 265
    new-instance v0, Lcom/tencent/bugly/proguard/aj$a;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p2}, Lcom/tencent/bugly/proguard/aj$a;-><init>(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)V

    .line 266
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/aj$a;->a(I)V

    .line 267
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/aj;->a(ILcom/tencent/bugly/proguard/ai;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/al;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 484
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_0

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al;

    .line 488
    const-string v4, " or "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/al;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 491
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 493
    const-string v3, " or "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    :try_start_3
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 498
    const-string v2, "[Database] deleted %s data %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "t_lr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 504
    :try_start_4
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    :try_start_5
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 501
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 504
    :cond_4
    :try_start_6
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 504
    :catchall_1
    move-exception v0

    sget-boolean v2, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v2, :cond_5

    .line 505
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public a(ILjava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)Z
    .locals 2

    .prologue
    .line 285
    if-nez p4, :cond_0

    .line 286
    new-instance v0, Lcom/tencent/bugly/proguard/aj$a;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p3}, Lcom/tencent/bugly/proguard/aj$a;-><init>(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)V

    .line 287
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/aj$a;->a(ILjava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/aj;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/ai;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/ai;Z)Z
    .locals 2

    .prologue
    .line 243
    if-nez p5, :cond_0

    .line 244
    new-instance v0, Lcom/tencent/bugly/proguard/aj$a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p4}, Lcom/tencent/bugly/proguard/aj$a;-><init>(Lcom/tencent/bugly/proguard/aj;ILcom/tencent/bugly/proguard/ai;)V

    .line 245
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/aj$a;->a(ILjava/lang/String;[B)V

    .line 246
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/aj;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/ai;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/tencent/bugly/proguard/al;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 345
    monitor-enter p0

    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 348
    :cond_1
    const/4 v2, 0x0

    .line 350
    :try_start_0
    sget-object v3, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 351
    if-eqz v2, :cond_4

    .line 352
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/aj;->b(Lcom/tencent/bugly/proguard/al;)Landroid/content/ContentValues;

    move-result-object v3

    .line 353
    if-eqz v3, :cond_4

    .line 354
    const-string v4, "t_lr"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 355
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 356
    const-string v3, "[Database] insert %s success."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "t_lr"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 357
    iput-wide v4, p1, Lcom/tencent/bugly/proguard/al;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :try_start_1
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move v0, v1

    .line 358
    goto :goto_0

    .line 371
    :cond_3
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 371
    :cond_4
    :try_start_2
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    :try_start_3
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 367
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    :cond_5
    :try_start_4
    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 371
    :catchall_1
    move-exception v0

    sget-boolean v1, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 372
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected b(Lcom/tencent/bugly/proguard/al;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 540
    if-nez p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-object v0

    .line 545
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 546
    iget-wide v2, p1, Lcom/tencent/bugly/proguard/al;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 547
    const-string v2, "_id"

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/al;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    :cond_2
    const-string v2, "_tp"

    iget v3, p1, Lcom/tencent/bugly/proguard/al;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string v2, "_pc"

    iget-object v3, p1, Lcom/tencent/bugly/proguard/al;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v2, "_th"

    iget-object v3, p1, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v2, "_tm"

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/al;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 553
    iget-object v2, p1, Lcom/tencent/bugly/proguard/al;->g:[B

    if-eqz v2, :cond_3

    .line 554
    const-string v2, "_dt"

    iget-object v3, p1, Lcom/tencent/bugly/proguard/al;->g:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v1

    .line 556
    goto :goto_0

    .line 557
    :catch_0
    move-exception v1

    .line 558
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/al;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 719
    if-nez p1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-object v0

    .line 723
    :cond_1
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/al;-><init>()V

    .line 724
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/al;->a:J

    .line 725
    const-string v2, "_tm"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/al;->e:J

    .line 726
    const-string v2, "_tp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/al;->f:Ljava/lang/String;

    .line 727
    const-string v2, "_dt"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/al;->g:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 728
    goto :goto_0

    .line 729
    :catch_0
    move-exception v1

    .line 730
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 731
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized b(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 517
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/aj;->c:Lcom/tencent/bugly/proguard/ak;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 518
    if-eqz v1, :cond_1

    .line 520
    if-ltz p1, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_tp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    :cond_0
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 522
    const-string v2, "[Database] deleted %s data %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "t_lr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    :try_start_2
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 525
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 528
    :cond_2
    :try_start_4
    sget-boolean v0, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 528
    :catchall_1
    move-exception v0

    :try_start_5
    sget-boolean v2, Lcom/tencent/bugly/proguard/aj;->a:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 529
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected c(Lcom/tencent/bugly/proguard/al;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 692
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/bugly/proguard/al;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 712
    :cond_1
    :goto_0
    return-object v0

    .line 697
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 698
    iget-wide v2, p1, Lcom/tencent/bugly/proguard/al;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 699
    const-string v2, "_id"

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/al;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 701
    :cond_3
    const-string v2, "_tp"

    iget-object v3, p1, Lcom/tencent/bugly/proguard/al;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v2, "_tm"

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/al;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    iget-object v2, p1, Lcom/tencent/bugly/proguard/al;->g:[B

    if-eqz v2, :cond_1

    .line 704
    const-string v2, "_dt"

    iget-object v3, p1, Lcom/tencent/bugly/proguard/al;->g:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 709
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    move-object v0, v1

    .line 712
    goto :goto_0
.end method
