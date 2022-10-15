.class public abstract Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;
.super Lcom/litesuits/bluetooth/conn/BleCallback;
.source "BleDescriptorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/litesuits/bluetooth/conn/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSuccess(Landroid/bluetooth/BluetoothGattDescriptor;)V
.end method
