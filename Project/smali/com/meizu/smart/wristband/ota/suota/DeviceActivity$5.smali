.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$5;
.super Ljava/lang/Object;
.source "DeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$5;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$5;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$600(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "enableBtIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$5;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    .end local v0    # "enableBtIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$5;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$700(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    goto :goto_0
.end method
