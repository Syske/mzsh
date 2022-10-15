.class Lcom/meizu/smart/wristband/bluetooth/BleService$25;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->enableCharacteristicNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

.field final synthetic val$characteristicUuidRead:Ljava/lang/String;

.field final synthetic val$serverUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->val$serverUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->val$characteristicUuidRead:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 780
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 783
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->isServiceDiscoered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNotify 1  server ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->val$serverUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " charRead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->val$characteristicUuidRead:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 785
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->newBleConnector()Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    move-result-object v1

    .line 786
    .local v1, "connector":Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->val$serverUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->val$characteristicUuidRead:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .line 787
    invoke-virtual {v1, v4}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->enableCharacteristicNotification(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)Z

    move-result v0

    .line 788
    .local v0, "b":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 789
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNotify 2  server ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->val$serverUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " charRead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;->val$characteristicUuidRead:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 794
    .end local v0    # "b":Z
    .end local v1    # "connector":Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    :goto_0
    return-void

    .line 792
    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "enable Notification failed"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
