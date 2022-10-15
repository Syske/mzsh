.class Lcom/cantrowitz/rxbroadcast/BroadcastProvider;
.super Ljava/lang/Object;
.source "BroadcastProvider.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final broadcastRegistrarStrategy:Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;


# direct methods
.method constructor <init>(Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;)V
    .locals 0
    .param p1, "broadcastRegistrarStrategy"    # Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->broadcastRegistrarStrategy:Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/cantrowitz/rxbroadcast/BroadcastProvider;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cantrowitz/rxbroadcast/BroadcastProvider;)Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->broadcastRegistrarStrategy:Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;

    return-object v0
.end method

.method private createBroadcastReceiver(Lrx/Subscriber;)Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/content/Intent;",
            ">;)",
            "Landroid/content/BroadcastReceiver;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/content/Intent;>;"
    new-instance v0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$2;-><init>(Lcom/cantrowitz/rxbroadcast/BroadcastProvider;Lrx/Subscriber;)V

    return-object v0
.end method

.method private createSubscription()Lrx/Subscription;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$1;

    invoke-direct {v0, p0}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$1;-><init>(Lcom/cantrowitz/rxbroadcast/BroadcastProvider;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/content/Intent;>;"
    invoke-direct {p0, p1}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->createBroadcastReceiver(Lrx/Subscriber;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    iget-object v1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->broadcastRegistrarStrategy:Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;

    iget-object v2, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v1, v2}, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 32
    invoke-direct {p0}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->createSubscription()Lrx/Subscription;

    move-result-object v0

    .line 33
    .local v0, "subscription":Lrx/Subscription;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 34
    return-void
.end method

.method getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method
