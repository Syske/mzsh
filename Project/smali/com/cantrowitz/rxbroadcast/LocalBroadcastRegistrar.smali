.class Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;
.super Ljava/lang/Object;
.source "LocalBroadcastRegistrar.java"

# interfaces
.implements Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;


# instance fields
.field private final intentFilter:Landroid/content/IntentFilter;

.field private final localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Landroid/support/v4/content/LocalBroadcastManager;)V
    .locals 0
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "localBroadcastManager"    # Landroid/support/v4/content/LocalBroadcastManager;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;->intentFilter:Landroid/content/IntentFilter;

    .line 16
    iput-object p2, p0, Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 17
    return-void
.end method


# virtual methods
.method public registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 22
    return-void
.end method

.method public unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/LocalBroadcastRegistrar;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    return-void
.end method
