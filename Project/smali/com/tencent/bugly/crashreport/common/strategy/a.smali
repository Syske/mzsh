.class public Lcom/tencent/bugly/crashreport/common/strategy/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field public static b:J

.field private static c:Lcom/tencent/bugly/crashreport/common/strategy/a;


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/tencent/bugly/proguard/ar;

.field private final f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const/16 v0, 0x3e8

    sput v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 41
    const-wide/32 v0, 0xf731400

    sput-wide v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/List;)V
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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 58
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 60
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Ljava/util/List;

    .line 61
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/proguard/ar;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/common/strategy/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/crashreport/common/strategy/a;
    .locals 2

    .prologue
    .line 111
    const-class v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/a;",
            ">;)",
            "Lcom/tencent/bugly/crashreport/common/strategy/a;"
        }
    .end annotation

    .prologue
    .line 68
    const-class v1, Lcom/tencent/bugly/crashreport/common/strategy/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 71
    :cond_0
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/proguard/ar;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/common/strategy/a$1;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/a;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.method protected a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 133
    const-string v0, "[Strategy] Notify %s"

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/tencent/bugly/crashreport/biz/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 134
    invoke-static {p1, p2}, Lcom/tencent/bugly/crashreport/biz/b;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    .line 135
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    .line 137
    :try_start_0
    const-string v2, "[Strategy] Notify %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/a;->onServerStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/bl;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 151
    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/bl;->h:J

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iget-wide v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 159
    :cond_2
    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    .line 161
    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/bl;->a:Z

    iput-boolean v0, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    .line 162
    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/bl;->c:Z

    iput-boolean v0, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    .line 163
    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/bl;->b:Z

    iput-boolean v0, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    .line 166
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    const-string v0, "[Strategy] Upload url changes to %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/bugly/proguard/bl;->d:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 170
    :cond_3
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    const-string v0, "[Strategy] Exception upload url changes to %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/bugly/proguard/bl;->e:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 174
    :cond_4
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->f:Lcom/tencent/bugly/proguard/bk;

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->f:Lcom/tencent/bugly/proguard/bk;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bk;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 176
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->f:Lcom/tencent/bugly/proguard/bk;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bk;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    .line 179
    :cond_5
    iget-wide v2, p1, Lcom/tencent/bugly/proguard/bl;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 180
    iget-wide v2, p1, Lcom/tencent/bugly/proguard/bl;->h:J

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    .line 183
    :cond_6
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 184
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->v:Ljava/util/Map;

    .line 185
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    const-string v2, "B11"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    if-eqz v0, :cond_a

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    iput-boolean v6, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    .line 193
    :goto_1
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    const-string v2, "B3"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    if-eqz v0, :cond_7

    .line 195
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->y:J

    .line 198
    :cond_7
    iget v0, p1, Lcom/tencent/bugly/proguard/bl;->l:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    .line 199
    iget v0, p1, Lcom/tencent/bugly/proguard/bl;->l:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->x:J

    .line 201
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    const-string v2, "B27"

    .line 202
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 205
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 206
    if-lez v0, :cond_8

    .line 207
    iput v0, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_8
    :goto_2
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    const-string v2, "B25"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    if-eqz v0, :cond_b

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 218
    iput-boolean v6, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    .line 225
    :cond_9
    :goto_3
    const-string v0, "[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    .line 229
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget-boolean v3, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    iget-boolean v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    .line 230
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:Z

    .line 231
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-wide v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-boolean v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-wide v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    .line 232
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 225
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 234
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 237
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/bugly/proguard/aj;->b(I)V

    .line 238
    new-instance v0, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/al;-><init>()V

    .line 239
    iput v8, v0, Lcom/tencent/bugly/proguard/al;->b:I

    .line 240
    iget-wide v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:J

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/al;->a:J

    .line 241
    iget-wide v2, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:J

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/al;->e:J

    .line 242
    invoke-static {v1}, Lcom/tencent/bugly/proguard/au;->a(Landroid/os/Parcelable;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/proguard/al;->g:[B

    .line 243
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/al;)Z

    .line 246
    invoke-virtual {p0, v1, v6}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    goto/16 :goto_0

    .line 190
    :cond_a
    iput-boolean v7, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    goto/16 :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 220
    :cond_b
    iput-boolean v7, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    goto/16 :goto_3
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    goto :goto_0
.end method

.method public d()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/aj;->a(I)Ljava/util/List;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 258
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al;

    .line 259
    iget-object v1, v0, Lcom/tencent/bugly/proguard/al;->g:[B

    if-eqz v1, :cond_0

    .line 260
    iget-object v0, v0, Lcom/tencent/bugly/proguard/al;->g:[B

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/au;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
