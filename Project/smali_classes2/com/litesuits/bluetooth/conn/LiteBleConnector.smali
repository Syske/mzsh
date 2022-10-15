.class public Lcom/litesuits/bluetooth/conn/LiteBleConnector;
.super Ljava/lang/Object;
.source "LiteBleConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/litesuits/bluetooth/conn/LiteBleConnector$MyHanlder;
    }
.end annotation


# static fields
.field public static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String; = null

.field public static HEART_RATE_MEASUREMENT:Ljava/lang/String; = null

.field private static final MSG_NOTIY_CHA:I = 0x6

.field private static final MSG_NOTIY_DES:I = 0x7

.field private static final MSG_READ_CHA:I = 0x3

.field private static final MSG_READ_DES:I = 0x4

.field private static final MSG_READ_RSSI:I = 0x5

.field private static final MSG_WRIATE_CHA:I = 0x1

.field private static final MSG_WRIATE_DES:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final UUID_HEART_RATE_MEASUREMENT:Ljava/util/UUID;


# instance fields
.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field private handler:Landroid/os/Handler;

.field private liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

.field private service:Landroid/bluetooth/BluetoothGattService;

.field private timeOutMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "00002a37-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    .line 48
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->UUID_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/litesuits/bluetooth/LiteBluetooth;)V
    .locals 2
    .param p1, "liteBluetooth"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x7530

    iput v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->timeOutMillis:I

    .line 64
    new-instance v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$MyHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$MyHanlder;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/LiteBleConnector$1;)V

    iput-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handler:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    .line 80
    invoke-virtual {p1}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/litesuits/bluetooth/LiteBluetooth;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .param p1, "liteBluetooth"    # Lcom/litesuits/bluetooth/LiteBluetooth;
    .param p2, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;-><init>(Lcom/litesuits/bluetooth/LiteBluetooth;)V

    .line 87
    iput-object p2, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->service:Landroid/bluetooth/BluetoothGattService;

    .line 88
    iput-object p3, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 89
    iput-object p4, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/litesuits/bluetooth/LiteBluetooth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "liteBluetooth"    # Lcom/litesuits/bluetooth/LiteBluetooth;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "charactUUID"    # Ljava/lang/String;
    .param p4, "descriptorUUID"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;-><init>(Lcom/litesuits/bluetooth/LiteBluetooth;)V

    .line 101
    invoke-virtual {p0, p2, p3, p4}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/litesuits/bluetooth/LiteBluetooth;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0
    .param p1, "liteBluetooth"    # Lcom/litesuits/bluetooth/LiteBluetooth;
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "charactUUID"    # Ljava/util/UUID;
    .param p4, "descriptorUUID"    # Ljava/util/UUID;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;-><init>(Lcom/litesuits/bluetooth/LiteBluetooth;)V

    .line 95
    invoke-virtual {p0, p2, p3, p4}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->withUUID(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/litesuits/bluetooth/conn/LiteBleConnector;)Lcom/litesuits/bluetooth/LiteBluetooth;
    .locals 1
    .param p0, "x0"    # Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    return-object v0
.end method

.method static synthetic access$200(Lcom/litesuits/bluetooth/conn/LiteBleConnector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private formUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 127
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method private handleAfterInitialed(ZLcom/litesuits/bluetooth/conn/BleCallback;)Z
    .locals 1
    .param p1, "initiated"    # Z
    .param p2, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCallback;

    .prologue
    .line 267
    if-eqz p2, :cond_0

    .line 268
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p2}, Lcom/litesuits/bluetooth/conn/BleCallback;->onInitiatedSuccess()V

    .line 274
    :cond_0
    :goto_0
    return p1

    .line 271
    :cond_1
    new-instance v0, Lcom/litesuits/bluetooth/exception/InitiatedException;

    invoke-direct {v0}, Lcom/litesuits/bluetooth/exception/InitiatedException;-><init>()V

    invoke-virtual {p2, v0}, Lcom/litesuits/bluetooth/conn/BleCallback;->onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    goto :goto_0
.end method

.method private handleCharacteristicNotificationCallback(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V
    .locals 2
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 451
    const/4 v0, 0x6

    new-instance v1, Lcom/litesuits/bluetooth/conn/LiteBleConnector$6;

    invoke-direct {v1, p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$6;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->listenAndTimer(Lcom/litesuits/bluetooth/conn/BleCallback;ILandroid/bluetooth/BluetoothGattCallback;)V

    .line 463
    :cond_0
    return-void
.end method

.method private handleCharacteristicReadCallback(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V
    .locals 2
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    const/4 v0, 0x3

    new-instance v1, Lcom/litesuits/bluetooth/conn/LiteBleConnector$3;

    invoke-direct {v1, p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$3;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->listenAndTimer(Lcom/litesuits/bluetooth/conn/BleCallback;ILandroid/bluetooth/BluetoothGattCallback;)V

    .line 410
    :cond_0
    return-void
.end method

.method private handleCharacteristicWriteCallback(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V
    .locals 2
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    const/4 v0, 0x1

    new-instance v1, Lcom/litesuits/bluetooth/conn/LiteBleConnector$1;

    invoke-direct {v1, p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$1;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->listenAndTimer(Lcom/litesuits/bluetooth/conn/BleCallback;ILandroid/bluetooth/BluetoothGattCallback;)V

    .line 371
    :cond_0
    return-void
.end method

.method private handleDescriptorNotificationCallback(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V
    .locals 2
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 466
    if-eqz p1, :cond_0

    .line 467
    const/4 v0, 0x7

    new-instance v1, Lcom/litesuits/bluetooth/conn/LiteBleConnector$7;

    invoke-direct {v1, p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$7;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->listenAndTimer(Lcom/litesuits/bluetooth/conn/BleCallback;ILandroid/bluetooth/BluetoothGattCallback;)V

    .line 479
    :cond_0
    return-void
.end method

.method private handleDescriptorReadCallback(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V
    .locals 2
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 414
    const/4 v0, 0x4

    new-instance v1, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;

    invoke-direct {v1, p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->listenAndTimer(Lcom/litesuits/bluetooth/conn/BleCallback;ILandroid/bluetooth/BluetoothGattCallback;)V

    .line 431
    :cond_0
    return-void
.end method

.method private handleDescriptorWriteCallback(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V
    .locals 2
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    const/4 v0, 0x2

    new-instance v1, Lcom/litesuits/bluetooth/conn/LiteBleConnector$2;

    invoke-direct {v1, p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$2;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->listenAndTimer(Lcom/litesuits/bluetooth/conn/BleCallback;ILandroid/bluetooth/BluetoothGattCallback;)V

    .line 389
    :cond_0
    return-void
.end method

.method private handleRSSIReadCallback(Lcom/litesuits/bluetooth/conn/BleRssiCallback;)V
    .locals 2
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleRssiCallback;

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    const/4 v0, 0x5

    new-instance v1, Lcom/litesuits/bluetooth/conn/LiteBleConnector$5;

    invoke-direct {v1, p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector$5;-><init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleRssiCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->listenAndTimer(Lcom/litesuits/bluetooth/conn/BleCallback;ILandroid/bluetooth/BluetoothGattCallback;)V

    .line 447
    :cond_0
    return-void
.end method

.method private listenAndTimer(Lcom/litesuits/bluetooth/conn/BleCallback;ILandroid/bluetooth/BluetoothGattCallback;)V
    .locals 4
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCallback;
    .param p2, "what"    # I
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 485
    invoke-virtual {p1, p3}, Lcom/litesuits/bluetooth/conn/BleCallback;->setBluetoothGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Lcom/litesuits/bluetooth/conn/BleCallback;

    .line 486
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v1, p3}, Lcom/litesuits/bluetooth/LiteBluetooth;->addGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z

    .line 487
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 488
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->timeOutMillis:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 489
    return-void
.end method


# virtual methods
.method public enableCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/litesuits/bluetooth/conn/BleCharactCallback;)Z
    .locals 2
    .param p1, "charact"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 234
    invoke-direct {p0, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleCharacteristicNotificationCallback(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V

    .line 235
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    .line 237
    :cond_0
    if-eqz p2, :cond_1

    .line 238
    new-instance v0, Lcom/litesuits/bluetooth/exception/OtherException;

    const-string v1, "Characteristic [not supports] readable!"

    invoke-direct {v0, v1}, Lcom/litesuits/bluetooth/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/litesuits/bluetooth/conn/BleCharactCallback;->onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableCharacteristicNotification(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)Z
    .locals 1
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->enableCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/litesuits/bluetooth/conn/BleCharactCallback;)Z

    move-result v0

    return v0
.end method

.method public enableDescriptorNotification(Landroid/bluetooth/BluetoothGattDescriptor;Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z
    .locals 2
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 255
    invoke-direct {p0, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleDescriptorNotificationCallback(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V

    .line 256
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->setDescriptorNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public enableDescriptorNotification(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z
    .locals 1
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->enableDescriptorNotification(Landroid/bluetooth/BluetoothGattDescriptor;Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z

    move-result v0

    return v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    return-object v0
.end method

.method public getService()Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->service:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method public getTimeOutMillis()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->timeOutMillis:I

    return v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/litesuits/bluetooth/conn/BleCharactCallback;)Z
    .locals 3
    .param p1, "charact"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 188
    invoke-direct {p0, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleCharacteristicReadCallback(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V

    .line 189
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleAfterInitialed(ZLcom/litesuits/bluetooth/conn/BleCallback;)Z

    move-result v0

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    if-eqz p2, :cond_0

    .line 192
    new-instance v1, Lcom/litesuits/bluetooth/exception/OtherException;

    const-string v2, "Characteristic [is not] readable!"

    invoke-direct {v1, v2}, Lcom/litesuits/bluetooth/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/litesuits/bluetooth/conn/BleCharactCallback;->onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    goto :goto_0
.end method

.method public readCharacteristic(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)Z
    .locals 1
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/litesuits/bluetooth/conn/BleCharactCallback;)Z

    move-result v0

    return v0
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z
    .locals 1
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 209
    invoke-direct {p0, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleDescriptorReadCallback(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V

    .line 210
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleAfterInitialed(ZLcom/litesuits/bluetooth/conn/BleCallback;)Z

    move-result v0

    return v0
.end method

.method public readDescriptor(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z
    .locals 1
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z

    move-result v0

    return v0
.end method

.method public readRemoteRssi(Lcom/litesuits/bluetooth/conn/BleRssiCallback;)Z
    .locals 1
    .param p1, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleRssiCallback;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleRSSIReadCallback(Lcom/litesuits/bluetooth/conn/BleRssiCallback;)V

    .line 218
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleAfterInitialed(ZLcom/litesuits/bluetooth/conn/BleCallback;)Z

    move-result v0

    return v0
.end method

.method public setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .locals 0
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 498
    return-object p0
.end method

.method public setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 516
    return-object p0
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "enable"    # Z

    .prologue
    .line 313
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 314
    sget-object v2, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Characteristic set notification value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/litesuits/bluetooth/log/BleLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 317
    .local v1, "success":Z
    sget-object v2, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->UUID_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    sget-object v2, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Heart Rate Measurement set [descriptor] notification value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/litesuits/bluetooth/log/BleLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v2, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 320
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 321
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 322
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 326
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 525
    return-object p0
.end method

.method public setDescriptorNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;Z)Z
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "enable"    # Z

    .prologue
    .line 342
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 343
    sget-object v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Descriptor set notification value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/litesuits/bluetooth/log/BleLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz p3, :cond_0

    .line 345
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 349
    :goto_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    .line 351
    :goto_1
    return v0

    .line 347
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattDescriptor;Z)Z
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "enable"    # Z

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2, p4}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0, p1, p3, p4}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->setDescriptorNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNotification(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->setNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public setService(Landroid/bluetooth/BluetoothGattService;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .locals 0
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->service:Landroid/bluetooth/BluetoothGattService;

    .line 507
    return-object p0
.end method

.method public setTimeOutMillis(I)Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .locals 0
    .param p1, "timeOutMillis"    # I

    .prologue
    .line 533
    iput p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->timeOutMillis:I

    .line 534
    return-object p0
.end method

.method public withUUID(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .locals 4
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;
    .param p3, "descriptorUUID"    # Ljava/util/UUID;

    .prologue
    .line 105
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    iput-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->service:Landroid/bluetooth/BluetoothGattService;

    .line 107
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 108
    .local v0, "mService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iput-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->service:Landroid/bluetooth/BluetoothGattService;

    goto :goto_0

    .line 113
    .end local v0    # "mService":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->service:Landroid/bluetooth/BluetoothGattService;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 114
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->service:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    iput-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 117
    iget-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 119
    :cond_3
    return-object p0
.end method

.method public withUUIDString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .locals 3
    .param p1, "serviceUUID"    # Ljava/lang/String;
    .param p2, "charactUUID"    # Ljava/lang/String;
    .param p3, "descriptorUUID"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->formUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->formUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->formUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->withUUID(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    move-result-object v0

    return-object v0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/litesuits/bluetooth/conn/BleCharactCallback;)Z
    .locals 3
    .param p1, "charact"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "data"    # [B
    .param p3, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    .line 144
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characteristic write bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,hex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/litesuits/bluetooth/utils/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Lcom/litesuits/bluetooth/log/BleLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-direct {p0, p3}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleCharacteristicWriteCallback(Lcom/litesuits/bluetooth/conn/BleCharactCallback;)V

    .line 149
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 150
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleAfterInitialed(ZLcom/litesuits/bluetooth/conn/BleCallback;)Z

    move-result v0

    return v0
.end method

.method public writeCharacteristic([BLcom/litesuits/bluetooth/conn/BleCharactCallback;)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleCharactCallback;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/litesuits/bluetooth/conn/BleCharactCallback;)Z

    move-result v0

    return v0
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[BLcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z
    .locals 3
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "data"    # [B
    .param p3, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 164
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " descriptor write bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,hex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/litesuits/bluetooth/utils/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/litesuits/bluetooth/log/BleLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-direct {p0, p3}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleDescriptorWriteCallback(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V

    .line 169
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 170
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleAfterInitialed(ZLcom/litesuits/bluetooth/conn/BleCallback;)Z

    move-result v0

    return v0
.end method

.method public writeDescriptor([BLcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "bleCallback"    # Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->getDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[BLcom/litesuits/bluetooth/conn/BleDescriptorCallback;)Z

    move-result v0

    return v0
.end method
