.class public Lcom/meizu/smart/wristband/Exit;
.super Ljava/lang/Object;
.source "Exit.java"


# static fields
.field private static instance:Lcom/meizu/smart/wristband/Exit;


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/Exit;->mList:Ljava/util/List;

    .line 17
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/meizu/smart/wristband/Exit;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/meizu/smart/wristband/Exit;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/smart/wristband/Exit;->instance:Lcom/meizu/smart/wristband/Exit;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/meizu/smart/wristband/Exit;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/Exit;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/Exit;->instance:Lcom/meizu/smart/wristband/Exit;

    .line 23
    :cond_0
    sget-object v0, Lcom/meizu/smart/wristband/Exit;->instance:Lcom/meizu/smart/wristband/Exit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/Exit;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/Exit;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 34
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 39
    :catchall_0
    move-exception v2

    throw v2
.end method
