.class public Lcom/cantrowitz/rxbroadcast/RxBroadcast;
.super Ljava/lang/Object;
.source "RxBroadcast.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;

    invoke-direct {v0, p0, p1}, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 30
    .local v0, "broadcastRegistrar":Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;
    new-instance v1, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    invoke-direct {v1, v0}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;-><init>(Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "broadcastPermission"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    .line 46
    .local v0, "broadcastWithPermissionsRegistrar":Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;
    new-instance v1, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    invoke-direct {v1, v0}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;-><init>(Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static fromLocalBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;

    .line 60
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;-><init>(Landroid/content/IntentFilter;Landroid/support/v4/content/LocalBroadcastManager;)V

    .line 61
    .local v0, "localBroadcastRegistrar":Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;
    new-instance v1, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    invoke-direct {v1, v0}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;-><init>(Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method
