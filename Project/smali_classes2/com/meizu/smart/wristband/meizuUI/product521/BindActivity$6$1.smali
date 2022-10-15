.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 454
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/litesuits/bluetooth/utils/BluetoothUtil;->enableBluetooth(Landroid/app/Activity;I)V

    .line 456
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->finishRefreshing()V

    .line 479
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 462
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->notifyDataSetChanged()V

    .line 463
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    const-wide/16 v2, 0x61a8

    invoke-static {}, Lcom/meizu/smart/wristband/constant/Producter;->getSupportDevice()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    .line 464
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;)V

    .line 465
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;)V

    .line 472
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 478
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0
.end method
