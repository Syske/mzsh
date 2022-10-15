.class Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$2;
.super Ljava/lang/Object;
.source "DeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->startDeviceScan()V
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
    .line 130
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$2;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$2;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$600(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$2;->this$0:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->access$500(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 134
    return-void
.end method
