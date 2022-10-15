.class public Ldolphin/tools/ble/Instruction;
.super Ljava/lang/Object;
.source "Instruction.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field public gattService:Landroid/bluetooth/BluetoothGattService;

.field public notificationToggle:Z

.field public type:Ldolphin/tools/ble/InstructionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
