.class public Lcom/litesuits/bluetooth/exception/ConnectException;
.super Lcom/litesuits/bluetooth/exception/BleException;
.source "ConnectException.java"


# instance fields
.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private gattStatus:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "gattStatus"    # I

    .prologue
    .line 14
    const/16 v0, 0xc9

    const-string v1, "Gatt Exception Occurred! "

    invoke-direct {p0, v0, v1}, Lcom/litesuits/bluetooth/exception/BleException;-><init>(ILjava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/litesuits/bluetooth/exception/ConnectException;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 16
    iput p2, p0, Lcom/litesuits/bluetooth/exception/ConnectException;->gattStatus:I

    .line 17
    return-void
.end method


# virtual methods
.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/litesuits/bluetooth/exception/ConnectException;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getGattStatus()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/litesuits/bluetooth/exception/ConnectException;->gattStatus:I

    return v0
.end method

.method public setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)Lcom/litesuits/bluetooth/exception/ConnectException;
    .locals 0
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/litesuits/bluetooth/exception/ConnectException;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 34
    return-object p0
.end method

.method public setGattStatus(I)Lcom/litesuits/bluetooth/exception/ConnectException;
    .locals 0
    .param p1, "gattStatus"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/litesuits/bluetooth/exception/ConnectException;->gattStatus:I

    .line 25
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectException{gattStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/litesuits/bluetooth/exception/ConnectException;->gattStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bluetoothGatt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/litesuits/bluetooth/exception/ConnectException;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    invoke-super {p0}, Lcom/litesuits/bluetooth/exception/BleException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
