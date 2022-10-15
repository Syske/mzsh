.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$4;
.super Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;
.source "DeviceActivity.java"


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
.method constructor <init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$4;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0, p2, p3}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method


# virtual methods
.method protected varargs onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V
    .locals 1
    .param p1, "gatt"    # [Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 166
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->setGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 167
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, [Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$4;->onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
