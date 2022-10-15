.class public Lcom/meizu/smart/wristband/ota/suota/data/Statics;
.super Ljava/lang/Object;
.source "Statics.java"


# static fields
.field public static final BLUETOOTH_GATT_UPDATE:Ljava/lang/String; = "BluetoothGattUpdate"

.field public static final CONNECTION_STATE_UPDATE:Ljava/lang/String; = "ConnectionState"

.field public static final DEFAULT_BLOCK_SIZE_VALUE:Ljava/lang/String; = "240"

.field public static final DEFAULT_CS_VALUE:I = 0x3

.field public static final DEFAULT_I2C_DEVICE_ADDRESS:Ljava/lang/String; = "0x50"

.field public static final DEFAULT_MISO_VALUE:I = 0x5

.field public static final DEFAULT_MOSI_VALUE:I = 0x6

.field public static final DEFAULT_SCK_VALUE:I = 0x0

.field public static final DEFAULT_SCL_GPIO_VALUE:I = 0x2

.field public static final DEFAULT_SDA_GPIO_VALUE:I = 0x3

.field public static final MEMORY_TYPE_I2C:I = 0x4

.field public static final MEMORY_TYPE_RETENTION_RAM:I = 0x2

.field public static final MEMORY_TYPE_SPI:I = 0x3

.field public static final MEMORY_TYPE_SPOTA_INDEX:I = 0x65

.field public static final MEMORY_TYPE_SUOTA_INDEX:I = 0x64

.field public static final MEMORY_TYPE_SYSTEM_RAM:I = 0x1

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_HARDWARE_REVISION_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_IEEE_11073:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_PNP_ID:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_SERIAL_NUMBER_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_SYSTEM_ID:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_SERVICE_DEVICE_INFORMATION:Ljava/util/UUID;

.field public static final PROGRESS_UPDATE:Ljava/lang/String; = "ProgressUpdate"

.field public static final SPOTA_DESCRIPTOR_UUID:Ljava/util/UUID;

.field public static final SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

.field public static final SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

.field public static final SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

.field public static final SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

.field public static final SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

.field public static final SPOTA_SERVICE_UUID:Ljava/util/UUID;

.field public static final SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

.field public static final fileChunkSize:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "0000fef5-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    .line 20
    const-string v0, "8082caa8-41a6-4021-91c6-56f9b954cc34"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 21
    const-string v0, "724249f0-5eC3-4b5f-8804-42345af08651"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    .line 22
    const-string v0, "6c53db25-47a1-45fe-a022-7c92fb334fd4"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    .line 23
    const-string v0, "9d84b9a3-000c-49d8-9183-855b673fda31"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    .line 24
    const-string v0, "457871e8-d516-4ca1-9116-57d0b17b9cb2"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    .line 25
    const-string v0, "5f78df94-798c-46f5-990a-b3eb6a065c88"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    .line 27
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_DESCRIPTOR_UUID:Ljava/util/UUID;

    .line 29
    const-string v0, "0000180a-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_SERVICE_DEVICE_INFORMATION:Ljava/util/UUID;

    .line 30
    const-string v0, "00002A29-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    .line 31
    const-string v0, "00002A24-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

    .line 32
    const-string v0, "00002A25-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    .line 33
    const-string v0, "00002A27-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    .line 34
    const-string v0, "00002A26-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    .line 35
    const-string v0, "00002A28-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    .line 36
    const-string v0, "00002A23-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SYSTEM_ID:Ljava/util/UUID;

    .line 37
    const-string v0, "00002A2A-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_IEEE_11073:Ljava/util/UUID;

    .line 38
    const-string v0, "00002A50-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_PNP_ID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileDirectoriesCreated(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 84
    const-string v0, "settings"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fileDirectoriesCreated"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAllPreviousInput(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviousInput(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "resourceID"    # I

    .prologue
    .line 72
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gpioStringToInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "spioValue"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "P"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "strippedValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static setFileDirectoriesCreated(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fileDirectoriesCreated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method

.method public static setPreviousInput(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "resourceID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method
