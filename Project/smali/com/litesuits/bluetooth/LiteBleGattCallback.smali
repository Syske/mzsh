.class public abstract Lcom/litesuits/bluetooth/LiteBleGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "LiteBleGattCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
.end method

.method public abstract onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end method
