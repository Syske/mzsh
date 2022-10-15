.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;->lambda$call$205(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;->lambda$call$206(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$call$205(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 1
    .param p1, "a"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    .line 115
    return-void
.end method

.method private static synthetic lambda$call$206(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;->call(Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Landroid/content/Intent;)Ljava/lang/Void;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    const-wide/16 v2, 0x61a8

    invoke-static {}, Lcom/meizu/smart/wristband/constant/Producter;->getSupportDevice()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    .line 112
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;)Lrx/functions/Action1;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1$$Lambda$2;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 119
    :cond_0
    return-object v5
.end method
