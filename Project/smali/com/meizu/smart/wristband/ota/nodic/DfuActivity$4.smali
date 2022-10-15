.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;
.super Ljava/lang/Object;
.source "DfuActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "bleDevice"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 240
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRecord()[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->analysisBroadcastData([BB)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$500(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan mac ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",target MacAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$600(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$600(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$602(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 251
    :goto_1
    return-object v1

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRecord()[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->analysisBroadcastData([BB)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;->call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
