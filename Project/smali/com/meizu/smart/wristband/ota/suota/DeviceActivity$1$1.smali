.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;
.super Ljava/lang/Object;
.source "DeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$scanRecord:[B


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    iput-object p2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->val$scanRecord:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$000(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->val$scanRecord:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->analysisBroadcastData([BB)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "targetMac":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   mac :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    iget-object v2, v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$100(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "real mac  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    iget-object v2, v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$100(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$200(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$300(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    .line 86
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$400(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->this$1:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$000(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v0    # "targetMac":Ljava/lang/String;
    :cond_1
    return-void
.end method
