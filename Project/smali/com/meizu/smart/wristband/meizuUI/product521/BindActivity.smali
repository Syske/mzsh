.class public Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "BindActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;,
        Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_TIP:Ljava/lang/String; = "action_tip"

.field public static FROM_WHERE:Ljava/lang/String;


# instance fields
.field private bBindSucess:Z

.field private bindSubscription:Lrx/Subscription;

.field private dlgConnect:Landroid/app/Dialog;

.field private fromUserInfo:I

.field private imageView_refresh:Landroid/widget/ImageView;

.field private image_icon:Landroid/widget/ImageView;

.field private iv_animation:Landroid/widget/ImageView;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mDlgDismisHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeOutHandler:Landroid/os/Handler;

.field private mTimeOutRun:Ljava/lang/Runnable;

.field private myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;

.field private refreshable_view:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

.field private text_tip_content:Landroid/widget/TextView;

.field private text_tip_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "from_where_data"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->FROM_WHERE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->bBindSucess:Z

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mTimeOutHandler:Landroid/os/Handler;

    .line 303
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$5;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mDlgDismisHandler:Landroid/os/Handler;

    .line 608
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Landroid/bluetooth/BluetoothManager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
    .param p1, "x1"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->addNewDevice(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->complate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->setBandImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->forceToOTA(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->showConnectDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->gotoOTA(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->getRealAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mProducts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->bBindSucess:Z

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->bBindSucess:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->refreshable_view:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/Subscription;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->bindSubscription:Lrx/Subscription;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->connectFail()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$startBind$207(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$showConnectDialog$208(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$setListener$217(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$showConnectDialog$209(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$showConnectDialog$210(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$showConnectDialog$211(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Throwable;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$showConnectDialog$212(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$showConnectDialog$213(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$showConnectDialog$214(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$showConnectDialog$215(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->lambda$setListener$216(Ljava/lang/Void;)V

    return-void
.end method

.method private addNewDevice(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 5
    .param p1, "device"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 323
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    .line 324
    .local v1, "p":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    :goto_0
    return-void

    .line 329
    .end local v1    # "p":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;
    :cond_1
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    .line 331
    .restart local v1    # "p":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "deviceName":Ljava/lang/String;
    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->name:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mode:Ljava/lang/Integer;

    .line 336
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mac:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->rssi:Ljava/lang/String;

    .line 338
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private checkGps()V
    .locals 3

    .prologue
    .line 128
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 129
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 131
    const v1, 0x7f080227

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method private complate()V
    .locals 3

    .prologue
    .line 384
    const-string v2, "bind onCompleted "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 385
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_tip"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method private connectFail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->imageView_refresh:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 355
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->imageView_refresh:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->image_icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->image_icon:Landroid/widget/ImageView;

    const v2, 0x7f0200f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 359
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_title:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_content:Landroid/widget/TextView;

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 361
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 362
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 363
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->bBindSucess:Z

    .line 364
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mTimeOutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mTimeOutRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mDlgDismisHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    return-void
.end method

.method private connectSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 369
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->imageView_refresh:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 370
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->imageView_refresh:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->image_icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->image_icon:Landroid/widget/ImageView;

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 374
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_title:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_content:Landroid/widget/TextView;

    const v2, 0x7f0800c9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 376
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 377
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 378
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->bBindSucess:Z

    .line 379
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mTimeOutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mTimeOutRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 380
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mDlgDismisHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 381
    return-void
.end method

.method private connected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->imageView_refresh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 344
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->imageView_refresh:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->image_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->image_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 348
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_title:Landroid/widget/TextView;

    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_content:Landroid/widget/TextView;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 351
    return-void
.end method

.method private forceToOTA(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "position"    # Ljava/lang/Integer;

    .prologue
    .line 503
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mProducts:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    .line 504
    .local v0, "p":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Firmware update"

    .line 505
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Do you want to upgrade a device already in OTA mode?"

    .line 506
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "no"

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$9;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    .line 507
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "yes"

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;)V

    .line 512
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 519
    return-void
.end method

.method private getRealAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "Address"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    .line 600
    const-string v1, ""

    .line 605
    :goto_0
    return-object v1

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 603
    .local v0, "_byte":[B
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 604
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 605
    .local v1, "realAddress":Ljava/lang/String;
    goto :goto_0
.end method

.method private gotoOTA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productMac"    # Ljava/lang/String;

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 532
    :try_start_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    .line 533
    .local v2, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    .line 534
    .local v3, "versionServer":Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
    invoke-static {p1}, Lcom/meizu/smart/wristband/constant/Producter;->deviceTypeToManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 536
    .local v1, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$11;

    invoke-direct {v5, p0, v3, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$11;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/models/database/servers/VersionServer;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v4, v5}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;

    invoke-direct {v5, p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 589
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    .end local v3    # "versionServer":Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
    :cond_0
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 137
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->refreshable_view:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .line 138
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->refreshable_view:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->setSpeed(F)V

    .line 139
    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mListView:Landroid/widget/ListView;

    .line 140
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->iv_animation:Landroid/widget/ImageView;

    .line 141
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->startAnimation()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mProducts:Ljava/util/List;

    .line 143
    return-void
.end method

.method private synthetic lambda$setListener$216(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->finish()V

    return-void
.end method

.method private static synthetic lambda$setListener$217(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;)Ljava/lang/Integer;
    .locals 1
    .param p0, "adapterViewItemClickEvent"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showConnectDialog$208(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->connected()V

    return-void
.end method

.method private static synthetic lambda$showConnectDialog$209(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 270
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1, p1}, Lcom/meizu/smart/wristband/servers/BleServer;->bindToCurrentDevice(JLcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showConnectDialog$210(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->connectFail()V

    return-void
.end method

.method private synthetic lambda$showConnectDialog$211(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 275
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showConnectDialog$212(Ljava/lang/Throwable;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 276
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$showConnectDialog$213(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 278
    return-object p0
.end method

.method private synthetic lambda$showConnectDialog$214(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->connectSuccess()V

    return-void
.end method

.method private synthetic lambda$showConnectDialog$215(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-static {p0, v0, v0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->commitMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$startBind$207(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 0
    .param p1, "a"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->addNewDevice(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    return-void
.end method

.method private setBandImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "productorname"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    const v5, 0x7f02005b

    const v4, 0x7f020059

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 166
    if-nez p1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "name":Ljava/lang/String;
    :goto_1
    const-string v1, "B521"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    :cond_1
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    :cond_2
    const-string v1, "B521"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 173
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_1

    .line 179
    :cond_4
    const-string v1, "B522"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 181
    :cond_5
    const-string v1, "B502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 183
    :cond_6
    const-string v1, "B103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 184
    const v1, 0x7f020057

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 186
    :cond_7
    const v1, 0x7f02005d

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setListener()V
    .locals 3

    .prologue
    .line 443
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 446
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->refreshable_view:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->setOnRefreshListener(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;I)V

    .line 485
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxAdapterView;->itemClickEvents(Landroid/widget/AdapterView;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$11;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 486
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$7;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    .line 487
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 498
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 500
    return-void
.end method

.method private showConnectDialog(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 215
    const/4 v5, 0x0

    .line 216
    .local v5, "layout":Landroid/view/View;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    .line 217
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 219
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    new-instance v8, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$2;

    invoke-direct {v8, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$3;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    .line 241
    .local v4, "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    invoke-virtual {v7, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 244
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 245
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 246
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 247
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040071

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 248
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 249
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->dlgConnect:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x43a00000    # 320.0f

    invoke-static {p0, v8}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x43480000    # 200.0f

    invoke-static {p0, v9}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setLayout(II)V

    .line 250
    const v7, 0x7f0e0258

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->imageView_refresh:Landroid/widget/ImageView;

    .line 251
    const v7, 0x7f0e0257

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->image_icon:Landroid/widget/ImageView;

    .line 252
    const v7, 0x7f0e0259

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_title:Landroid/widget/TextView;

    .line 253
    const v7, 0x7f0e025a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->text_tip_content:Landroid/widget/TextView;

    .line 254
    const v7, 0x7f05000e

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 255
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 256
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->imageView_refresh:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iput-boolean v10, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->bBindSucess:Z

    .line 260
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    .line 261
    .local v6, "p":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;
    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->name:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v1

    .line 262
    .local v1, "bleServer":Lcom/meizu/smart/wristband/servers/BleServer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "begin to connect "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mac:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 263
    new-instance v2, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;-><init>()V

    .line 264
    .local v2, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductorname(Ljava/lang/String;)V

    .line 265
    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/meizu/smart/wristband/constant/Producter;->deviceTypeToManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductor(Ljava/lang/String;)V

    .line 266
    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mac:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setMac(Ljava/lang/String;)V

    .line 267
    iget-object v7, v6, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mac:Ljava/lang/String;

    const-wide/16 v8, 0x2710

    const/4 v10, 0x1

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMacWithoutScan(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v7

    .line 268
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v7

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Action1;

    move-result-object v8

    .line 269
    invoke-virtual {v7, v8}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v7

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v8

    .line 270
    invoke-virtual {v7, v8}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    .line 271
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v7

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Action1;

    move-result-object v8

    .line 273
    invoke-virtual {v7, v8}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v7

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Action1;

    move-result-object v8

    .line 275
    invoke-virtual {v7, v8}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v7

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Func1;

    move-result-object v8

    .line 276
    invoke-virtual {v7, v8}, Lrx/Observable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$7;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v8

    .line 278
    invoke-virtual {v7, v8}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Action1;

    move-result-object v8

    .line 280
    invoke-virtual {v7, v8}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v7

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Func1;

    move-result-object v8

    .line 281
    invoke-virtual {v7, v8}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    new-instance v8, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v8}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 282
    invoke-virtual {v7, v8}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->bindSubscription:Lrx/Subscription;

    .line 284
    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;

    invoke-direct {v7, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mTimeOutRun:Ljava/lang/Runnable;

    .line 295
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mTimeOutHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mTimeOutRun:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7530

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    return-void
.end method

.method private startAnimation()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x7d0

    const/4 v11, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 147
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 148
    .local v9, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 149
    invoke-virtual {v9, v11}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 150
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x40c00000    # 6.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 152
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 153
    invoke-virtual {v0, v11}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 157
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->iv_animation:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    return-void
.end method

.method private startBind()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 191
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;

    invoke-direct {v0, p0, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;

    .line 192
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lcom/litesuits/bluetooth/utils/BluetoothUtil;->enableBluetooth(Landroid/app/Activity;I)V

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-static {}, Lcom/meizu/smart/wristband/constant/Producter;->getSupportDevice()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    .line 201
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 203
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 209
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const-string v2, "bluetooth"

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 98
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->FROM_WHERE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->fromUserInfo:I

    .line 99
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->initView()V

    .line 100
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->startBind()V

    .line 101
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->setListener()V

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v0}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v1

    .line 105
    .local v1, "stepObservable":Lrx/Observable;, "Lrx/Observable<Landroid/content/Intent;>;"
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 123
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->checkGps()V

    .line 124
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->setContentView(I)V

    .line 92
    return-void
.end method
