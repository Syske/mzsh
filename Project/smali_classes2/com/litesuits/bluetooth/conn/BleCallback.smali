.class public abstract Lcom/litesuits/bluetooth/conn/BleCallback;
.super Ljava/lang/Object;
.source "BleCallback.java"


# instance fields
.field private bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/BleCallback;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method public abstract onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
.end method

.method public onInitiatedSuccess()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected setBluetoothGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Lcom/litesuits/bluetooth/conn/BleCallback;
    .locals 0
    .param p1, "bluetoothGattCallback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/BleCallback;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 32
    return-object p0
.end method
