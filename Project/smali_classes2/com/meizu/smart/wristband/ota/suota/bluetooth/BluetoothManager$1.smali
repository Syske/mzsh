.class Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$1;
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

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iput p2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$1;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$1;->this$0:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$1;->val$progress:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->access$000(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;I)V

    .line 282
    return-void
.end method
