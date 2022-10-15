.class Lcom/meizu/smart/wristband/bluetooth/BleService$22;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

.field final synthetic val$existMacs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$22;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$22;->val$existMacs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "object"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    const/4 v4, 0x1

    .line 697
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$22;->val$existMacs:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 705
    :goto_0
    return-object v2

    .line 700
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 701
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$22;->val$existMacs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 702
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$22;->val$existMacs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 701
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 705
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 694
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$22;->call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
