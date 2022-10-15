.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$7;
.super Lcom/meizu/smart/wristband/ota/suota/BluetoothGattReceiver;
.source "DeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 227
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$7;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/BluetoothGattReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/ota/suota/BluetoothGattReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 231
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$7;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    iget-object v0, v0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->processStep(Landroid/content/Intent;)V

    .line 232
    return-void
.end method
