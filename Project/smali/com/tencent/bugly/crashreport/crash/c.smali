.class public Lcom/tencent/bugly/crashreport/crash/c;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field public static b:Z

.field public static c:Z

.field public static d:I

.field public static e:I

.field public static f:J

.field public static g:Ljava/lang/String;

.field public static h:Z

.field public static i:Ljava/lang/String;

.field public static j:I

.field public static k:Z

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field private static t:Lcom/tencent/bugly/crashreport/crash/c;


# instance fields
.field public final n:Lcom/tencent/bugly/crashreport/crash/b;

.field public final o:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field public final p:Lcom/tencent/bugly/proguard/ar;

.field public q:Lcom/tencent/bugly/BuglyStrategy$a;

.field public r:Lcom/tencent/bugly/crashreport/crash/f;

.field private final s:Landroid/content/Context;

.field private final u:Lcom/tencent/bugly/crashreport/crash/e;

.field private final v:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field private final w:Lcom/tencent/bugly/crashreport/crash/anr/b;

.field private x:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v0, 0x4e20

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    sput v3, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    .line 36
    sput-boolean v3, Lcom/tencent/bugly/crashreport/crash/c;->b:Z

    .line 46
    sput-boolean v4, Lcom/tencent/bugly/crashreport/crash/c;->c:Z

    .line 47
    sput v0, Lcom/tencent/bugly/crashreport/crash/c;->d:I

    .line 48
    sput v0, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    .line 49
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/tencent/bugly/crashreport/crash/c;->f:J

    .line 50
    sput-object v2, Lcom/tencent/bugly/crashreport/crash/c;->g:Ljava/lang/String;

    .line 51
    sput-boolean v3, Lcom/tencent/bugly/crashreport/crash/c;->h:Z

    .line 52
    sput-object v2, Lcom/tencent/bugly/crashreport/crash/c;->i:Ljava/lang/String;

    .line 53
    const/16 v0, 0x1388

    sput v0, Lcom/tencent/bugly/crashreport/crash/c;->j:I

    .line 54
    sput-boolean v4, Lcom/tencent/bugly/crashreport/crash/c;->k:Z

    .line 62
    sput-object v2, Lcom/tencent/bugly/crashreport/crash/c;->l:Ljava/lang/String;

    .line 64
    sput-object v2, Lcom/tencent/bugly/crashreport/crash/c;->m:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/ar;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/crashreport/crash/f;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sput p1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    .line 94
    invoke-static/range {p2 .. p2}, Lcom/tencent/bugly/proguard/au;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    .line 95
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tencent/bugly/crashreport/crash/c;->s:Landroid/content/Context;

    .line 96
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 97
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/proguard/ar;

    .line 98
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/crash/c;->q:Lcom/tencent/bugly/BuglyStrategy$a;

    .line 99
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/crash/c;->r:Lcom/tencent/bugly/crashreport/crash/f;

    .line 100
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->a()Lcom/tencent/bugly/proguard/ap;

    move-result-object v5

    .line 101
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v6

    .line 102
    new-instance v2, Lcom/tencent/bugly/crashreport/crash/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/common/strategy/a;

    move/from16 v3, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/tencent/bugly/crashreport/crash/b;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/ap;Lcom/tencent/bugly/proguard/aj;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/crashreport/crash/f;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/c;->n:Lcom/tencent/bugly/crashreport/crash/b;

    .line 104
    invoke-static {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v8

    .line 105
    new-instance v2, Lcom/tencent/bugly/crashreport/crash/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/crash/c;->n:Lcom/tencent/bugly/crashreport/crash/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v2, v4, v3, v5, v8}, Lcom/tencent/bugly/crashreport/crash/e;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/crash/e;

    .line 106
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/bugly/crashreport/crash/c;->n:Lcom/tencent/bugly/crashreport/crash/b;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-object v7, v4

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p7

    invoke-static/range {v7 .. v13}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/proguard/ar;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/c;->v:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/c;->v:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    iput-object v2, v8, Lcom/tencent/bugly/crashreport/common/info/a;->I:Lcom/tencent/bugly/crashreport/a;

    .line 109
    new-instance v9, Lcom/tencent/bugly/crashreport/crash/anr/b;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/bugly/crashreport/crash/c;->n:Lcom/tencent/bugly/crashreport/crash/b;

    move-object v10, v4

    move-object v12, v8

    move-object/from16 v13, p3

    move-object v14, v6

    move-object/from16 v16, p5

    invoke-direct/range {v9 .. v16}, Lcom/tencent/bugly/crashreport/crash/anr/b;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/proguard/ar;Lcom/tencent/bugly/proguard/aj;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/BuglyStrategy$a;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    .line 111
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/crashreport/crash/c;
    .locals 2

    .prologue
    .line 145
    const-class v0, Lcom/tencent/bugly/crashreport/crash/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/c;)Lcom/tencent/bugly/crashreport/crash/e;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/crash/e;

    return-object v0
.end method

.method public static declared-synchronized a(ILandroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/crashreport/crash/f;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 126
    const-class v8, Lcom/tencent/bugly/crashreport/crash/c;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/c;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v3

    move v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/crashreport/crash/c;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/ar;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/crashreport/crash/f;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit v8

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/crash/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/crashreport/crash/c;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;J)Z

    .line 344
    return-void
.end method

.method public a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/e;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 155
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->v:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 156
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 158
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/c;->a(J)V

    .line 159
    return-void
.end method

.method public a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->n:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 307
    return-void
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
    .locals 9

    .prologue
    .line 283
    iget-object v8, p0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/proguard/ar;

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/c$1;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/crashreport/crash/c$1;-><init>(Lcom/tencent/bugly/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V

    invoke-virtual {v8, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 165
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/c;->x:Ljava/lang/Boolean;

    .line 166
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 170
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->e:Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/bugly/proguard/aj;->a(I)Ljava/util/List;

    move-result-object v3

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 175
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al;

    .line 176
    iget-object v5, v0, Lcom/tencent/bugly/proguard/al;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/crash/c;->x:Ljava/lang/Boolean;

    .line 178
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 183
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/util/List;)V

    :cond_3
    move v0, v1

    .line 185
    goto :goto_0

    .line 188
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/c;->x:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/c;->f()V

    .line 197
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/c;->h()V

    .line 198
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/c;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/c;->e()V

    .line 208
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/c;->g()V

    .line 209
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/c;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/e;->b()V

    .line 219
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a()V

    .line 226
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->v:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 233
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->v:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 240
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->b(Z)V

    .line 248
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->b(Z)V

    .line 255
    return-void
.end method

.method public declared-synchronized k()V
    .locals 1

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->v:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()V
    .locals 1

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a()Z

    move-result v0

    return v0
.end method
