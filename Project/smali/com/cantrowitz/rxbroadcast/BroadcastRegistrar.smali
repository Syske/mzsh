.class Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;
.super Ljava/lang/Object;
.source "BroadcastRegistrar.java"

# interfaces
.implements Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;


# instance fields
.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;->intentFilter:Landroid/content/IntentFilter;

    .line 17
    return-void
.end method


# virtual methods
.method public registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    return-void
.end method

.method public unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrar;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    return-void
.end method
