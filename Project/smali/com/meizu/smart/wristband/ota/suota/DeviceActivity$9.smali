.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$9;
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
    .line 244
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$9;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/BluetoothGattReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/ota/suota/BluetoothGattReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 248
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, "connectionState":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$9;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1, v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$800(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;I)V

    .line 250
    return-void
.end method
