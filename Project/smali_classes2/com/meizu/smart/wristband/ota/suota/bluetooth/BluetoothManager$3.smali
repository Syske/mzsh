.class Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$3;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 421
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$3;->this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$3;->this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget-object v0, v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->finish()V

    .line 424
    return-void
.end method
