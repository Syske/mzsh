.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$5;
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
    .line 228
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "bleDevice"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRecord()[B

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->checkModel([B)I

    move-result v0

    .line 232
    .local v0, "mode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanForSupportDevice mac ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 233
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$700(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$5;->call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
