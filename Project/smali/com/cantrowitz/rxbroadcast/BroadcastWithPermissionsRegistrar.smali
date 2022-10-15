.class Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;
.super Ljava/lang/Object;
.source "BroadcastWithPermissionsRegistrar.java"

# interfaces
.implements Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private final permissions:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->intentFilter:Landroid/content/IntentFilter;

    .line 22
    iput-object p3, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->permissions:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->handler:Landroid/os/Handler;

    .line 24
    return-void
.end method


# virtual methods
.method public registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->intentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->permissions:Ljava/lang/String;

    iget-object v3, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method public unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastWithPermissionsRegistrar;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    return-void
.end method
