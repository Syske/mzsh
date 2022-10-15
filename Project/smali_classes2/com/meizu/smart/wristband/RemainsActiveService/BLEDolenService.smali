.class public Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;
.super Ljava/lang/Object;
.source "BLEDolenService.java"


# static fields
.field private static Instance:Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService; = null

.field private static final TAG:Ljava/lang/String; = "wxf_BLEDolenService"

.field private static connect_result:Z

.field private static mConnection:Landroid/content/ServiceConnection;

.field private static mHandler:Landroid/os/Handler;

.field private static mLeService:Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->Instance:Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;

    .line 17
    sput-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mLeService:Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    .line 21
    new-instance v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService$1;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService$1;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "service":Landroid/content/Intent;
    :try_start_0
    sget-object v1, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sput-boolean v1, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->connect_result:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    iput-object p1, p0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mContext:Landroid/content/Context;

    .line 43
    return-void

    .line 39
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mLeService:Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;)Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    .prologue
    .line 11
    sput-object p0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mLeService:Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->Instance:Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->Instance:Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;

    .line 58
    :cond_0
    sget-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->Instance:Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;

    return-object v0
.end method


# virtual methods
.method public getBleService()Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mLeService:Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    return-object v0
.end method

.method public getConnectResult()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->connect_result:Z

    return v0
.end method

.method public unBindService()V
    .locals 2

    .prologue
    .line 62
    sget-boolean v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->connect_result:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->Instance:Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;

    .line 64
    const-string v0, "wxf_dolen"

    const-string v1, "BLEDolenService unBindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
