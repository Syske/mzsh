.class Lcom/meizu/smart/wristband/bluetooth/BleService$21;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$21;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V
    .locals 5
    .param p1, "bleDevice"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 711
    const/4 v1, 0x0

    .line 713
    .local v1, "mode":I
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRecord()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->analysisBroadcastData([BB)Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, "mode_get":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanForSupportDevice mode_get ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 715
    if-eqz v2, :cond_0

    .line 716
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 721
    .end local v2    # "mode_get":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->setMode(I)V

    .line 722
    return-void

    .line 716
    .restart local v2    # "mode_get":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 718
    .end local v2    # "mode_get":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanForSupportDevice \u89e3\u6790\u5e7f\u64ad\u5305\u6a21\u5f0f\u51fa\u9519 e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 707
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$21;->call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)V

    return-void
.end method
