.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->lambda$onLeScan$91(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->lambda$onLeScan$92(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->lambda$onLeScan$93(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->lambda$onLeScan$94()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->lambda$onLeScan$95(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onLeScan$91(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$700(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onLeScan$92(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onLeScan$93(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    return-void
.end method

.method private synthetic lambda$onLeScan$94()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshing()V

    return-void
.end method

.method private synthetic lambda$onLeScan$95(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshingWithError()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 261
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-nez v0, :cond_1

    .line 262
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 283
    .end local v0    # "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v0    # "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect \u626b\u5230\u8bbe\u5907 address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff0c\u8981\u8fde\u63a5\u7684\u8bbe\u5907 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 270
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    .line 271
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;)Lrx/functions/Action1;

    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;)Lrx/functions/Action0;

    move-result-object v2

    .line 278
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;)Lrx/functions/Action1;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 280
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0
.end method
