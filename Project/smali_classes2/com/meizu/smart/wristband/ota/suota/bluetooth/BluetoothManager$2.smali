.class Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$2;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->sendBlock()F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$2;->this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iput-object p2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$2;->this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget-object v0, v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 304
    return-void
.end method
