.class public Lcom/tencent/bugly/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static af:Lcom/tencent/bugly/crashreport/common/info/a;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Z

.field public F:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public H:Z

.field public I:Lcom/tencent/bugly/crashreport/a;

.field private final J:Landroid/content/Context;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:J

.field private U:J

.field private V:J

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Z

.field public final a:J

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/Boolean;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private ag:I

.field private ah:I

.field private ai:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private al:Z

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private aq:Ljava/lang/String;

.field private final ar:Ljava/lang/Object;

.field private final as:Ljava/lang/Object;

.field private final at:Ljava/lang/Object;

.field private final au:Ljava/lang/Object;

.field private final av:Ljava/lang/Object;

.field private final aw:Ljava/lang/Object;

.field private final ax:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public final c:B

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->g:Z

    .line 39
    const-string v0, "com.tencent.bugly"

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    .line 40
    const-string v0, "2.4.0"

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 48
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    .line 49
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:Ljava/lang/String;

    .line 51
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->n:J

    .line 53
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:Ljava/lang/String;

    .line 58
    iput-wide v6, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:J

    .line 59
    iput-wide v6, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:J

    .line 60
    iput-wide v6, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:J

    .line 61
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/util/Map;

    .line 64
    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Z

    .line 65
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/lang/Boolean;

    .line 71
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->r:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->s:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    .line 76
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->t:Ljava/util/List;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/util/Map;

    .line 86
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Ljava/lang/String;

    .line 87
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->v:J

    .line 88
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->w:J

    .line 89
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->x:J

    .line 90
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->y:J

    .line 92
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    .line 93
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Z

    .line 98
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/util/HashMap;

    .line 102
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Ljava/util/List;

    .line 113
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Z

    .line 114
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Lcom/tencent/bugly/crashreport/a;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->as:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->au:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aw:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ax:Ljava/lang/Object;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    .line 127
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    .line 128
    iput-byte v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->c:B

    .line 129
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->b(Landroid/content/Context;)V

    .line 130
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 131
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->b:Ljava/lang/String;

    .line 137
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Landroid/content/Context;)V

    .line 140
    :try_start_0
    const-string v0, "bugly_db_"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Z

    .line 144
    const-string v0, "App is first time to be installed on the device."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    const-string v0, "com info create end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 152
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    sget-boolean v1, Lcom/tencent/bugly/b;->c:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    .locals 2

    .prologue
    .line 242
    const-class v1, Lcom/tencent/bugly/crashreport/common/info/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 245
    :cond_0
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/tencent/bugly/crashreport/common/info/a;
    .locals 2

    .prologue
    .line 254
    const-class v0, Lcom/tencent/bugly/crashreport/common/info/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->af:Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 160
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 161
    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    :try_start_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/lang/String;

    .line 167
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 181
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 182
    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->t:Ljava/util/List;

    .line 187
    const-string v0, "BUGLY_APPID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    if-eqz v0, :cond_2

    .line 189
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:Ljava/lang/String;

    .line 191
    :cond_2
    const-string v0, "BUGLY_APP_VERSION"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    if-eqz v0, :cond_3

    .line 193
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 195
    :cond_3
    const-string v0, "BUGLY_APP_CHANNEL"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    if-eqz v0, :cond_4

    .line 197
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;

    .line 199
    :cond_4
    const-string v0, "BUGLY_ENABLE_DEBUG"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    if-eqz v0, :cond_5

    .line 201
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    .line 203
    :cond_5
    const-string v0, "com.tencent.rdm.uuid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 714
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 716
    monitor-exit v1

    .line 717
    return-void

    .line 716
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public B()I
    .locals 2

    .prologue
    .line 757
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public C()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public D()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ax:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 797
    const/4 v0, 0x0

    monitor-exit v1

    .line 799
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public E()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 825
    const/4 v0, 0x0

    monitor-exit v1

    .line 827
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    goto :goto_0

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public F()I
    .locals 2

    .prologue
    .line 853
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v1

    .line 854
    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    monitor-exit v1

    return v0

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    return v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized I()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 902
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 912
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->c()I

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 923
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/String;

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/String;

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/String;

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/String;

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public P()J
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->m(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 838
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    .line 840
    if-eq v0, p1, :cond_0

    .line 841
    iput p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    .line 842
    const-string v2, "user scene tag %d changed to tag %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 844
    :cond_0
    monitor-exit v1

    .line 845
    return-void

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 523
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Z

    .line 230
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Lcom/tencent/bugly/crashreport/a;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Lcom/tencent/bugly/crashreport/a;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/crashreport/a;->setNativeIsAppForeground(Z)Z

    .line 233
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Z

    return v0
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 862
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    .line 863
    if-eq v0, p1, :cond_0

    .line 864
    iput p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    .line 865
    const-string v1, "server scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 867
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    if-nez p1, :cond_0

    .line 331
    :try_start_0
    const-string p1, "10000"

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    .line 334
    monitor-exit v1

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 742
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 749
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "2.4.0"

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 807
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    :cond_0
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 815
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 284
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    .line 286
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    .line 300
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:Ljava/lang/String;

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 701
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 703
    const/4 v0, 0x0

    .line 706
    :goto_0
    return-object v0

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 726
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 728
    const/4 v0, 0x0

    .line 731
    :goto_0
    return-object v0

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    .line 347
    :goto_0
    return-object v0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Z

    if-nez v0, :cond_0

    .line 403
    const-string v0, ""

    .line 408
    :goto_0
    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:Ljava/lang/String;

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Z

    if-nez v0, :cond_0

    .line 418
    const-string v0, ""

    .line 423
    :goto_0
    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Z

    if-nez v0, :cond_0

    .line 433
    const-string v0, ""

    .line 438
    :goto_0
    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Z

    if-nez v0, :cond_0

    .line 448
    const-string v0, ""

    .line 453
    :goto_0
    return-object v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:Ljava/lang/String;

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:Ljava/lang/String;

    goto :goto_0
.end method

.method public o()J
    .locals 4

    .prologue
    .line 462
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 463
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:J

    .line 465
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:J

    return-wide v0
.end method

.method public p()J
    .locals 4

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 475
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:J

    .line 477
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:J

    return-wide v0
.end method

.method public q()J
    .locals 4

    .prologue
    .line 486
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 487
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:J

    .line 489
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/String;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 5

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    const-string v1, "BuglySdkInfos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 540
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    :try_start_2
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 549
    :catch_1
    move-exception v0

    .line 550
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    .line 552
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 547
    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 562
    :cond_2
    const-string v0, "SDK_INFO"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    :goto_3
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/String;

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized v()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 587
    :cond_0
    const/4 v0, 0x0

    .line 592
    :goto_0
    monitor-exit p0

    return-object v0

    .line 590
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 591
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 632
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Ljava/lang/String;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->h(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/lang/Boolean;

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:Ljava/lang/Boolean;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 4

    .prologue
    .line 673
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/lang/String;

    .line 675
    const-string v0, "rom:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 688
    const/4 v0, 0x0

    monitor-exit v1

    .line 690
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
