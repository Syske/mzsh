.class public Lcom/baidu/mapapi/cloud/CloudManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/baidu/mapapi/cloud/CloudManager;


# instance fields
.field private b:Landroid/os/Bundle;

.field private d:Lcom/baidu/platform/comjni/map/cloud/a;

.field private e:Landroid/os/Handler;

.field private f:Lcom/baidu/mapapi/cloud/CloudListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/baidu/mapapi/cloud/CloudManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/cloud/CloudManager;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/cloud/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/common/BaiduMapSDKException;

    const-string v1, "the version of cloud is not match with base"

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/common/BaiduMapSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/NativeLoader;->getInstance()Lcom/baidu/platform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/cloud/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->b:Landroid/os/Bundle;

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-le p1, v1, :cond_0

    add-int/lit16 v0, p1, -0x2710

    :goto_0
    :sswitch_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/baidu/mapapi/cloud/CloudManager;)Lcom/baidu/platform/comjni/map/cloud/a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/cloud/CloudManager;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/cloud/CloudManager;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/mapapi/cloud/BaseCloudSearchInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/BaseCloudSearchInfo;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->b:Landroid/os/Bundle;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/CloudManager;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/cloud/a;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mapapi/cloud/CloudManager;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/cloud/CloudManager;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/cloud/CloudManager;)Lcom/baidu/mapapi/cloud/CloudListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->f:Lcom/baidu/mapapi/cloud/CloudListener;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/cloud/a;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/baidu/mapapi/cloud/CloudManager;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/cloud/CloudManager;->c:Lcom/baidu/mapapi/cloud/CloudManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/cloud/CloudManager;

    invoke-direct {v0}, Lcom/baidu/mapapi/cloud/CloudManager;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/cloud/CloudManager;->c:Lcom/baidu/mapapi/cloud/CloudManager;

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/cloud/CloudManager;->c:Lcom/baidu/mapapi/cloud/CloudManager;

    return-object v0
.end method


# virtual methods
.method public boundSearch(Lcom/baidu/mapapi/cloud/BoundSearchInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/cloud/CloudManager;->a(Lcom/baidu/mapapi/cloud/BaseCloudSearchInfo;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/CloudManager;->e:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/mapapi/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/cloud/a;->b()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    :cond_0
    return-void
.end method

.method public detailSearch(Lcom/baidu/mapapi/cloud/DetailSearchInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/DetailSearchInfo;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->b:Landroid/os/Bundle;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/CloudManager;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/cloud/a;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init(Lcom/baidu/mapapi/cloud/CloudListener;)V
    .locals 4

    iput-object p1, p0, Lcom/baidu/mapapi/cloud/CloudManager;->f:Lcom/baidu/mapapi/cloud/CloudListener;

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/platform/comjni/map/cloud/a;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/cloud/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    iget-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/cloud/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->d:Lcom/baidu/platform/comjni/map/cloud/a;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->b:Landroid/os/Bundle;

    new-instance v0, Lcom/baidu/mapapi/cloud/a;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/cloud/a;-><init>(Lcom/baidu/mapapi/cloud/CloudManager;)V

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/CloudManager;->e:Landroid/os/Handler;

    const/high16 v0, 0x20000

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/CloudManager;->e:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/mapapi/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method public localSearch(Lcom/baidu/mapapi/cloud/LocalSearchInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/cloud/CloudManager;->a(Lcom/baidu/mapapi/cloud/BaseCloudSearchInfo;)Z

    move-result v0

    return v0
.end method

.method public nearbySearch(Lcom/baidu/mapapi/cloud/NearbySearchInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/cloud/CloudManager;->a(Lcom/baidu/mapapi/cloud/BaseCloudSearchInfo;)Z

    move-result v0

    return v0
.end method
