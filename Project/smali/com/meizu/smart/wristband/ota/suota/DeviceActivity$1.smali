.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;
.super Ljava/lang/Object;
.source "DeviceActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;
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
    .line 72
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1$1;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;Landroid/bluetooth/BluetoothDevice;[B)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
