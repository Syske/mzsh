.class public Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;
.super Ljava/lang/Object;
.source "BluetoothGattSingleton.java"


# static fields
.field private static gatt:Landroid/bluetooth/BluetoothGatt;

.field private static spotaMemInfoCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 11
    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->spotaMemInfoCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public static getSpotaMemInfoCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->spotaMemInfoCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public static setGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "newGatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 18
    sput-object p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 19
    return-void
.end method

.method public static setSpotaMemInfoCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p0, "spotaMemInfoCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 26
    sput-object p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->spotaMemInfoCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 27
    return-void
.end method
