.class public Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "NewBindActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;,
        Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;
    }
.end annotation


# static fields
.field public static FROM_WHERE:Ljava/lang/String;


# instance fields
.field private drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

.field private fromUserInfo:I

.field private handler:Landroid/os/Handler;

.field private layoutBall:Landroid/widget/RelativeLayout;

.field private layoutBind:Landroid/widget/LinearLayout;

.field private layoutBindSuccess:Landroid/widget/LinearLayout;

.field private layoutDevice:Landroid/widget/LinearLayout;

.field private layoutFind:Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mDlgDismisHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;",
            ">;"
        }
    .end annotation
.end field

.field private myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

.field nSelectIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "from_where_data"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->FROM_WHERE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->handler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    .line 198
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$4;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mDlgDismisHandler:Landroid/os/Handler;

    .line 492
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->nSelectIndex:I

    .line 571
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->startBind()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBind:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->forceToOTA(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->connectToBind(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mDlgDismisHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->complate()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->gotoOTA(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->getRealAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$setListener$222(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$setListener$223(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$startBind$232(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$setListener$224(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$connectToBind$225(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$connectToBind$226(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/Throwable;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$connectToBind$227(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$connectToBind$228(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$connectToBind$229(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$connectToBind$230(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->lambda$connectToBind$231(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private addNewDevice(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 9
    .param p1, "device"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    const/4 v8, 0x0

    .line 359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 360
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    .line 361
    .local v3, "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    iget-object v5, v3, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRssi()I

    move-result v5

    iput v5, v3, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->rssi:I

    .line 363
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v5, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->notifyDataSetChanged()V

    .line 393
    .end local v3    # "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    :goto_1
    return-void

    .line 359
    .restart local v3    # "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v3    # "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    :cond_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutFind:Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit16 v2, v5, -0xfa

    .line 372
    .local v2, "moveY":I
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutFind:Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;

    const/16 v6, 0x32

    const/16 v7, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->smoothScrollTo(III)V

    .line 380
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutDevice:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    .end local v2    # "moveY":I
    :cond_2
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$1;)V

    .line 385
    .local v4, "product":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "deviceName":Ljava/lang/String;
    iput-object v0, v4, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->name:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mode:Ljava/lang/Integer;

    .line 389
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mac:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRssi()I

    move-result v5

    iput v5, v4, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->rssi:I

    .line 391
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method private checkGps()V
    .locals 3

    .prologue
    .line 438
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 439
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 441
    const v1, 0x7f080227

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method

.method private complate()V
    .locals 3

    .prologue
    .line 207
    const-string v2, "bind onCompleted "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_tip"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method private connectSuccess()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBindSuccess:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->setOnDrawCompleteListenter(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;)V

    .line 190
    return-void
.end method

.method private connectToBind(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 151
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v3

    .line 153
    .local v3, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    .line 154
    .local v2, "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    iget-object v4, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->name:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 155
    .local v0, "bleServer":Lcom/meizu/smart/wristband/servers/BleServer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin to connect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;-><init>()V

    .line 157
    .local v1, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    iget-object v4, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductorname(Ljava/lang/String;)V

    .line 158
    iget-object v4, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/smart/wristband/constant/Producter;->deviceTypeToManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductor(Ljava/lang/String;)V

    .line 159
    iget-object v4, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mac:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setMac(Ljava/lang/String;)V

    .line 160
    iget-object v4, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mac:Ljava/lang/String;

    const-wide/16 v6, 0x2710

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v6, v7, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMacWithoutScan(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v4

    .line 161
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lrx/functions/Action1;

    move-result-object v5

    .line 162
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v5

    .line 163
    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    .line 164
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lrx/functions/Func1;

    move-result-object v5

    .line 169
    invoke-virtual {v4, v5}, Lrx/Observable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$7;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v5

    .line 171
    invoke-virtual {v4, v5}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lrx/functions/Action1;

    move-result-object v5

    .line 172
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lrx/functions/Func1;

    move-result-object v5

    .line 173
    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v5

    .line 174
    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 175
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 176
    return-void
.end method

.method private connected()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBind:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    return-void
.end method

.method private forceToOTA(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "position"    # Ljava/lang/Integer;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mProducts:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    .line 217
    .local v0, "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Firmware update"

    .line 218
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Do you want to upgrade a device already in OTA mode?"

    .line 219
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "no"

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$6;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V

    .line 220
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "yes"

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;)V

    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 232
    return-void
.end method

.method private getRealAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "Address"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    .line 312
    const-string v1, ""

    .line 317
    :goto_0
    return-object v1

    .line 314
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 315
    .local v0, "_byte":[B
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 316
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 317
    .local v1, "realAddress":Ljava/lang/String;
    goto :goto_0
.end method

.method private gotoOTA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productMac"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 245
    :try_start_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    .line 246
    .local v2, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    .line 247
    .local v3, "versionServer":Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
    invoke-static {p1}, Lcom/meizu/smart/wristband/constant/Producter;->deviceTypeToManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 249
    .local v1, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$9;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;

    invoke-direct {v5, p0, v3, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/models/database/servers/VersionServer;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4, v5}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;

    invoke-direct {v5, p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 302
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .end local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    .end local v3    # "versionServer":Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 398
    const v0, 0x7f0e027c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBall:Landroid/widget/RelativeLayout;

    .line 399
    const v0, 0x7f0e027b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutFind:Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;

    .line 400
    const v0, 0x7f0e027e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutDevice:Landroid/widget/LinearLayout;

    .line 401
    const v0, 0x7f0e027f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBind:Landroid/widget/LinearLayout;

    .line 402
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBind:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    const v0, 0x7f0e0281

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBindSuccess:Landroid/widget/LinearLayout;

    .line 404
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBindSuccess:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    .line 408
    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mListView:Landroid/widget/ListView;

    .line 411
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->startAnimation()V

    .line 413
    return-void
.end method

.method private synthetic lambda$connectToBind$225(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->connected()V

    return-void
.end method

.method private static synthetic lambda$connectToBind$226(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 163
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1, p1}, Lcom/meizu/smart/wristband/servers/BleServer;->bindToCurrentDevice(JLcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToBind$227(Ljava/lang/Throwable;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 169
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

.method private static synthetic lambda$connectToBind$228(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 171
    return-object p0
.end method

.method private synthetic lambda$connectToBind$229(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->connectSuccess()V

    return-void
.end method

.method private synthetic lambda$connectToBind$230(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-static {p0, v0, v0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->commitMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToBind$231(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 3
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->fetchLatestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$222(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$223(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->showBindRetryDlg()V

    return-void
.end method

.method private static synthetic lambda$setListener$224(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;)Ljava/lang/Integer;
    .locals 1
    .param p0, "adapterViewItemClickEvent"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$startBind$232(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 0
    .param p1, "a"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->addNewDevice(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 112
    const v0, 0x7f0e0280

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 116
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxAdapterView;->itemClickEvents(Landroid/widget/AdapterView;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V

    .line 118
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 144
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 146
    return-void
.end method

.method private showBindRetryDlg()V
    .locals 7

    .prologue
    .line 448
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 449
    .local v3, "inflaterDl":Landroid/view/LayoutInflater;
    const v5, 0x7f040074

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 452
    .local v4, "layout":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 454
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 455
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 459
    const v5, 0x7f0e025f

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 460
    .local v0, "btnCancel":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;

    invoke-direct {v5, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    const v5, 0x7f0e0260

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 476
    .local v1, "btnOK":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;

    invoke-direct {v5, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$11;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    .line 417
    const v2, 0x7f05000a

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 418
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 419
    .local v1, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->layoutBall:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 423
    return-void
.end method

.method private startBind()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 328
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

    invoke-direct {v1, p0, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$1;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

    .line 329
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->myListAdapter:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const/16 v1, 0x3e8

    invoke-static {p0, v1}, Lcom/litesuits/bluetooth/utils/BluetoothUtil;->enableBluetooth(Landroid/app/Activity;I)V

    .line 350
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 339
    .local v0, "device":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_1

    .line 340
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->setAutoConnect(ZLjava/lang/String;)Z

    .line 341
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/servers/BleServer;->disConnect()V

    .line 346
    :cond_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-static {}, Lcom/meizu/smart/wristband/constant/Producter;->getSupportDevice()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;

    move-result-object v1

    .line 347
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$11;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 348
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 349
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 88
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->FROM_WHERE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->fromUserInfo:I

    .line 90
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->mContext:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->initView()V

    .line 94
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->checkGps()V

    .line 96
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->setListener()V

    .line 98
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 568
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onDestroy()V

    .line 569
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 428
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->setContentView(I)V

    .line 429
    return-void
.end method
