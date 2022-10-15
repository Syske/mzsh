.class Lcom/cantrowitz/rxbroadcast/BroadcastProvider$1;
.super Ljava/lang/Object;
.source "BroadcastProvider.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->createSubscription()Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cantrowitz/rxbroadcast/BroadcastProvider;


# direct methods
.method constructor <init>(Lcom/cantrowitz/rxbroadcast/BroadcastProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$1;->this$0:Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$1;->this$0:Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    invoke-static {v0}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->access$100(Lcom/cantrowitz/rxbroadcast/BroadcastProvider;)Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$1;->this$0:Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    invoke-static {v1}, Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->access$000(Lcom/cantrowitz/rxbroadcast/BroadcastProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cantrowitz/rxbroadcast/BroadcastRegistrarStrategy;->unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    return-void
.end method
