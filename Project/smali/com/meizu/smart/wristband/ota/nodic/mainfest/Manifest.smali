.class public Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"


# instance fields
.field protected application:Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

.field protected bootloader:Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

.field protected softdevice:Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

.field protected softdeviceBootloader:Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "softdevice_bootloader"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->application:Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    return-object v0
.end method

.method public getBootloaderInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->bootloader:Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    return-object v0
.end method

.method public getSoftdeviceBootloaderInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->softdeviceBootloader:Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;

    return-object v0
.end method

.method public getSoftdeviceInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->softdevice:Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    return-object v0
.end method
