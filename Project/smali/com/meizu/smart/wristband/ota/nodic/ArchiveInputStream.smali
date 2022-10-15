.class public Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "ArchiveInputStream.java"


# static fields
.field private static final APPLICATION_BIN:Ljava/lang/String; = "application.bin"

.field private static final APPLICATION_HEX:Ljava/lang/String; = "application.hex"

.field private static final APPLICATION_INIT:Ljava/lang/String; = "application.dat"

.field private static final BOOTLOADER_BIN:Ljava/lang/String; = "bootloader.bin"

.field private static final BOOTLOADER_HEX:Ljava/lang/String; = "bootloader.hex"

.field private static final MANIFEST:Ljava/lang/String; = "manifest.json"

.field private static final SOFTDEVICE_BIN:Ljava/lang/String; = "softdevice.bin"

.field private static final SOFTDEVICE_HEX:Ljava/lang/String; = "softdevice.hex"

.field private static final SYSTEM_INIT:Ljava/lang/String; = "system.dat"


# instance fields
.field private applicationBytes:[B

.field private applicationInitBytes:[B

.field private applicationSize:I

.field private bootloaderBytes:[B

.field private bootloaderSize:I

.field private bytesRead:I

.field private bytesReadFromCurrentSource:I

.field private currentSource:[B

.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

.field private softDeviceAndBootloaderBytes:[B

.field private softDeviceBytes:[B

.field private softDeviceSize:I

.field private systemInitBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "mbrSize"    # I
    .param p3, "types"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 102
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 104
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    .line 105
    iput v6, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesRead:I

    .line 106
    iput v6, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 113
    :try_start_0
    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->parseZip(I)V

    .line 118
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    if-eqz v5, :cond_e

    .line 119
    const/4 v4, 0x0

    .line 122
    .local v4, "valid":Z
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->getApplicationInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_0

    and-int/lit8 v5, p3, 0x4

    if-lez v5, :cond_2

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->getApplicationInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    move-result-object v0

    .line 124
    .local v0, "application":Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    .line 125
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationInitBytes:[B

    .line 127
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    if-nez v5, :cond_1

    .line 128
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v0    # "application":Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    .end local v4    # "valid":Z
    :catchall_0
    move-exception v5

    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    throw v5

    .line 129
    .restart local v0    # "application":Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    .restart local v4    # "valid":Z
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationSize:I

    .line 130
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 131
    const/4 v4, 0x1

    .line 135
    .end local v0    # "application":Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    :cond_2
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->getBootloaderInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz p3, :cond_3

    and-int/lit8 v5, p3, 0x2

    if-lez v5, :cond_6

    .line 136
    :cond_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->systemInitBytes:[B

    if-eqz v5, :cond_4

    .line 137
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Manifest: softdevice and bootloader specified. Use softdevice_bootloader instead."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_4
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->getBootloaderInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    move-result-object v1

    .line 140
    .local v1, "bootloader":Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    .line 141
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->systemInitBytes:[B

    .line 143
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    if-nez v5, :cond_5

    .line 144
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bootloader file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 145
    :cond_5
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    .line 146
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 147
    const/4 v4, 0x1

    .line 151
    .end local v1    # "bootloader":Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    :cond_6
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->getSoftdeviceInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    if-eqz p3, :cond_7

    and-int/lit8 v5, p3, 0x1

    if-lez v5, :cond_9

    .line 152
    :cond_7
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->getSoftdeviceInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;

    move-result-object v2

    .line 153
    .local v2, "softdevice":Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    .line 154
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->systemInitBytes:[B

    .line 156
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    if-nez v5, :cond_8

    .line 157
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SoftDevice file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_8
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    .line 159
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 160
    const/4 v4, 0x1

    .line 164
    .end local v2    # "softdevice":Lcom/meizu/smart/wristband/ota/nodic/mainfest/FileInfo;
    :cond_9
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->getSoftdeviceBootloaderInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;

    move-result-object v5

    if-eqz v5, :cond_d

    if-eqz p3, :cond_a

    and-int/lit8 v5, p3, 0x1

    if-lez v5, :cond_d

    and-int/lit8 v5, p3, 0x2

    if-lez v5, :cond_d

    .line 166
    :cond_a
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->systemInitBytes:[B

    if-eqz v5, :cond_b

    .line 167
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Manifest: The softdevice_bootloader may not be used together with softdevice or bootloader."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    :cond_b
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;->getSoftdeviceBootloaderInfo()Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;

    move-result-object v3

    .line 170
    .local v3, "system":Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 171
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->systemInitBytes:[B

    .line 173
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-nez v5, :cond_c

    .line 174
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    :cond_c
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;->getSoftdeviceSize()I

    move-result v5

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    .line 176
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;->getBootloaderSize()I

    move-result v5

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    .line 177
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 178
    const/4 v4, 0x1

    .line 181
    .end local v3    # "system":Lcom/meizu/smart/wristband/ota/nodic/mainfest/SoftDeviceBootloaderFileInfo;
    :cond_d
    if-nez v4, :cond_18

    .line 182
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Manifest file must specify at least one file."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    .end local v4    # "valid":Z
    :cond_e
    const/4 v4, 0x0

    .line 198
    .restart local v4    # "valid":Z
    if-eqz p3, :cond_f

    and-int/lit8 v5, p3, 0x4

    if-lez v5, :cond_11

    .line 199
    :cond_f
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "application.hex"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    .line 200
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    if-nez v5, :cond_10

    .line 201
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "application.bin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    .line 202
    :cond_10
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    if-eqz v5, :cond_11

    .line 203
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationSize:I

    .line 204
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "application.dat"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationInitBytes:[B

    .line 205
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 206
    const/4 v4, 0x1

    .line 211
    :cond_11
    if-eqz p3, :cond_12

    and-int/lit8 v5, p3, 0x2

    if-lez v5, :cond_14

    .line 212
    :cond_12
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "bootloader.hex"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    .line 213
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    if-nez v5, :cond_13

    .line 214
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "bootloader.bin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    .line 215
    :cond_13
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v5, :cond_14

    .line 216
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    .line 217
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "system.dat"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->systemInitBytes:[B

    .line 218
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 219
    const/4 v4, 0x1

    .line 224
    :cond_14
    if-eqz p3, :cond_15

    and-int/lit8 v5, p3, 0x1

    if-lez v5, :cond_17

    .line 225
    :cond_15
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "softdevice.hex"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    .line 226
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    if-nez v5, :cond_16

    .line 227
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "softdevice.bin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    .line 228
    :cond_16
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    if-eqz v5, :cond_17

    .line 229
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    .line 230
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "system.dat"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->systemInitBytes:[B

    .line 231
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 232
    const/4 v4, 0x1

    .line 236
    :cond_17
    if-nez v4, :cond_18

    .line 237
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The ZIP file must contain an Application, a Soft Device and/or a Bootloader."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :cond_18
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 243
    return-void
.end method

.method private parseZip(I)V
    .locals 11
    .param p1, "mbrSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 257
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 260
    .local v5, "manifestData":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .local v8, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_3

    .line 261
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-super {p0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_0

    .line 267
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 269
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 272
    .local v7, "source":[B
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "hex"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 273
    new-instance v4, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;

    invoke-direct {v4, v7, p1}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;-><init>([BI)V

    .line 274
    .local v4, "is":Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->available()I

    move-result v9

    new-array v7, v9, [B

    .line 275
    invoke-virtual {v4, v7}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->read([B)I

    .line 276
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;->close()V

    .line 280
    .end local v4    # "is":Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;
    :cond_1
    const-string v9, "manifest.json"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 281
    new-instance v5, Ljava/lang/String;

    .end local v5    # "manifestData":Ljava/lang/String;
    const-string v9, "UTF-8"

    invoke-direct {v5, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v5    # "manifestData":Ljava/lang/String;
    goto :goto_0

    .line 283
    :cond_2
    iget-object v9, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 286
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "count":I
    .end local v3    # "filename":Ljava/lang/String;
    .end local v7    # "source":[B
    :cond_3
    if-eqz v5, :cond_4

    .line 287
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    const-class v10, Lcom/meizu/smart/wristband/ota/nodic/mainfest/ManifestFile;

    invoke-virtual {v9, v5, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/ota/nodic/mainfest/ManifestFile;

    .line 288
    .local v6, "manifestFile":Lcom/meizu/smart/wristband/ota/nodic/mainfest/ManifestFile;
    invoke-virtual {v6}, Lcom/meizu/smart/wristband/ota/nodic/mainfest/ManifestFile;->getManifest()Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    .line 290
    .end local v6    # "manifestFile":Lcom/meizu/smart/wristband/ota/nodic/mainfest/ManifestFile;
    :cond_4
    return-void
.end method

.method private startNextFile()[B
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 401
    .local v0, "ret":[B
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 402
    return-object v0

    .line 396
    .end local v0    # "ret":[B
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    if-eqz v1, :cond_1

    .line 397
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .restart local v0    # "ret":[B
    goto :goto_0

    .line 399
    .end local v0    # "ret":[B
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .restart local v0    # "ret":[B
    goto :goto_0
.end method


# virtual methods
.method public applicationImageSize()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationSize:I

    return v0
.end method

.method public available()I
    .locals 2

    .prologue
    .line 410
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bootloaderImageSize()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    .line 295
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    .line 296
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    .line 297
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 298
    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationSize:I

    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    .line 299
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    .line 300
    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesRead:I

    .line 301
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 302
    return-void
.end method

.method public getApplicationInit()[B
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationInitBytes:[B

    return-object v0
.end method

.method public getContentType()I
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "b":B
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    if-lez v1, :cond_0

    .line 343
    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 344
    :cond_0
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    if-lez v1, :cond_1

    .line 345
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 346
    :cond_1
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationSize:I

    if-lez v1, :cond_2

    .line 347
    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 348
    :cond_2
    return v0
.end method

.method public getManifest()Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    return-object v0
.end method

.method public getSystemInit()[B
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->systemInitBytes:[B

    return-object v0
.end method

.method public read([B)I
    .locals 7
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 306
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    array-length v4, v4

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    sub-int v0, v4, v5

    .line 307
    .local v0, "maxSize":I
    array-length v4, p1

    if-gt v4, v0, :cond_0

    array-length v2, p1

    .line 308
    .local v2, "size":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    invoke-static {v4, v5, p1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 310
    array-length v4, p1

    if-le v4, v2, :cond_2

    .line 311
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->startNextFile()[B

    move-result-object v4

    if-nez v4, :cond_1

    .line 312
    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesRead:I

    move v3, v2

    .line 323
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_1
    return v3

    .end local v3    # "size":I
    :cond_0
    move v2, v0

    .line 307
    goto :goto_0

    .line 316
    .restart local v2    # "size":I
    :cond_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    array-length v0, v4

    .line 317
    array-length v4, p1

    sub-int/2addr v4, v2

    if-gt v4, v0, :cond_3

    array-length v4, p1

    sub-int v1, v4, v2

    .line 318
    .local v1, "nextSize":I
    :goto_2
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->currentSource:[B

    invoke-static {v4, v6, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 320
    add-int/2addr v2, v1

    .line 322
    .end local v1    # "nextSize":I
    :cond_2
    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesRead:I

    move v3, v2

    .line 323
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_1

    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_3
    move v1, v0

    .line 317
    goto :goto_2
.end method

.method public setContentType(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 359
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bytesRead:I

    if-lez v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Content type must not be change after reading content"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->getContentType()I

    move-result v1

    and-int v0, v1, p1

    .line 364
    .local v0, "t":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    .line 365
    iput-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceBytes:[B

    .line 366
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v1, :cond_1

    .line 367
    iput-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 368
    iput v2, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    .line 370
    :cond_1
    iput v2, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    .line 372
    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_4

    .line 373
    iput-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderBytes:[B

    .line 374
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v1, :cond_3

    .line 375
    iput-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 376
    iput v2, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    .line 378
    :cond_3
    iput v2, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderSize:I

    .line 380
    :cond_4
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5

    .line 381
    iput-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationBytes:[B

    .line 382
    iput v2, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationSize:I

    .line 384
    :cond_5
    return v0
.end method

.method public softDeviceImageSize()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceSize:I

    return v0
.end method
