.class Lcom/meizu/smart/wristband/servers/BleServerB52$22;
.super Landroid/os/Handler;
.source "BleServerB52.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB52;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$22;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$22;->bundle:Landroid/os/Bundle;

    .line 458
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 461
    :pswitch_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$22;->bundle:Landroid/os/Bundle;

    const-string v3, "meizu_alarm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "alarm":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 468
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/servers/BleServerB52$22$1;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$22$1;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$22;)V

    .line 469
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 474
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 462
    .end local v0    # "alarm":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
