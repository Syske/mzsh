.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$8;
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
    .line 235
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$8;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/BluetoothGattReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/ota/suota/BluetoothGattReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 239
    const-string v1, "progess"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, "progress":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$8;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    iget-object v1, v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 241
    return-void
.end method
