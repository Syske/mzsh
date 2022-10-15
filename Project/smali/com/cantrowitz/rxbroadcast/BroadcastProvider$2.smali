.class Lcom/cantrowitz/rxbroadcast/BroadcastProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cantrowitz/rxbroadcast/BroadcastProvider;->createBroadcastReceiver(Lrx/Subscriber;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/cantrowitz/rxbroadcast/BroadcastProvider;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$2;->this$0:Lcom/cantrowitz/rxbroadcast/BroadcastProvider;

    iput-object p2, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$2;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/cantrowitz/rxbroadcast/BroadcastProvider$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method
