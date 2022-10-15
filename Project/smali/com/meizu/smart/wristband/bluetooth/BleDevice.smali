.class public Lcom/meizu/smart/wristband/bluetooth/BleDevice;
.super Ljava/lang/Object;
.source "BleDevice.java"


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field mode:I

.field name:Ljava/lang/String;

.field record:[B

.field rssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecord()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->record:[B

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->rssi:I

    return v0
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->device:Landroid/bluetooth/BluetoothDevice;

    .line 38
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->mode:I

    .line 22
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRecord([B)V
    .locals 0
    .param p1, "record"    # [B

    .prologue
    .line 53
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->record:[B

    .line 54
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->rssi:I

    .line 46
    return-void
.end method
