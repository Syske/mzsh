.class final Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService$1;
.super Ljava/lang/Object;
.source "BLEDolenService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 29
    check-cast p2, Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService$LocalBinder;->getService()Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->access$002(Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;)Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    .line 30
    invoke-static {}, Lcom/meizu/smart/wristband/RemainsActiveService/BLEDolenService;->access$000()Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;->initialize()Z

    .line 31
    const-string v0, "wxf_BLEDolenService"

    const-string v1, "service start now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 26
    return-void
.end method
