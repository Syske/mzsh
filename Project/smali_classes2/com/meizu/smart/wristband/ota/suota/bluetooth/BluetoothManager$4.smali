.class Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$4;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$4;->this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$4;->this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget-object v0, v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->finish()V

    .line 435
    return-void
.end method
