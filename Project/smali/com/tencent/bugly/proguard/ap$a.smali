.class Lcom/tencent/bugly/proguard/ap$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/proguard/ap;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Runnable;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/ap;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p2, p0, Lcom/tencent/bugly/proguard/ap$a;->b:Landroid/content/Context;

    .line 1038
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->c:Ljava/lang/Runnable;

    .line 1039
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ap$a;->d:J

    .line 1040
    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/ap;Landroid/content/Context;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p2, p0, Lcom/tencent/bugly/proguard/ap$a;->b:Landroid/content/Context;

    .line 1044
    iput-object p3, p0, Lcom/tencent/bugly/proguard/ap$a;->c:Ljava/lang/Runnable;

    .line 1045
    iput-wide p4, p0, Lcom/tencent/bugly/proguard/ap$a;->d:J

    .line 1046
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1056
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->b:Landroid/content/Context;

    const-string v1, "security_info"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/au;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1059
    const-string v0, "[UploadManager] Sleep %d try to lock security file again (pid=%d | tid=%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1388

    .line 1061
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1062
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1059
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1063
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/au;->b(J)V

    .line 1064
    const-string v0, "BUGLY_ASYNC_UPLOAD"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1065
    const-string v0, "[UploadManager] Failed to start a thread to execute task of initializing security context, try to post it into thread pool."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1068
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v0

    .line 1069
    if-eqz v0, :cond_1

    .line 1070
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    const-string v0, "[UploadManager] Asynchronous thread pool is unavailable now, try next time."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->c(Lcom/tencent/bugly/proguard/ap;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1085
    const-string v0, "[UploadManager] Failed to load security info from database"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1086
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/ap;->b(Z)V

    .line 1089
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Lcom/tencent/bugly/proguard/ap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1091
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1093
    const-string v0, "[UploadManager] Sucessfully got session ID, try to execute upload tasks now (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    .line 1095
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1093
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1096
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 1098
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap$a;->c:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ap$a;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/ap;->a(Lcom/tencent/bugly/proguard/ap;Ljava/lang/Runnable;J)V

    .line 1100
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/ap;->a(Lcom/tencent/bugly/proguard/ap;I)V

    .line 1102
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->b:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/au;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1103
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->e(Lcom/tencent/bugly/proguard/ap;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/ap;->a(Lcom/tencent/bugly/proguard/ap;Z)Z

    .line 1106
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1111
    :cond_5
    const-string v0, "[UploadManager] Session ID is expired, drop it."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1113
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/ap;->b(Z)V

    .line 1117
    :cond_6
    invoke-static {v7}, Lcom/tencent/bugly/proguard/au;->a(I)[B

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_8

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_8

    .line 1119
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/ap;->a(Lcom/tencent/bugly/proguard/ap;[B)[B

    .line 1121
    const-string v0, "[UploadManager] Execute one upload task for requesting session ID (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    .line 1123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1121
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1124
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 1126
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap$a;->c:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ap$a;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/ap;->a(Lcom/tencent/bugly/proguard/ap;Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1130
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/ap;->a(Lcom/tencent/bugly/proguard/ap;I)V

    goto/16 :goto_0

    .line 1135
    :cond_8
    const-string v0, "[UploadManager] Failed to create AES key (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    .line 1136
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1135
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1139
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/ap;->b(Z)V

    .line 1141
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->b:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/au;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1142
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->e(Lcom/tencent/bugly/proguard/ap;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1144
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$a;->a:Lcom/tencent/bugly/proguard/ap;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/ap;->a(Lcom/tencent/bugly/proguard/ap;Z)Z

    .line 1145
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
