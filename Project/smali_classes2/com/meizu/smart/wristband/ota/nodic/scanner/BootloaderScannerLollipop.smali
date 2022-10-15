.class public Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;
.super Landroid/bluetooth/le/ScanCallback;
.source "BootloaderScannerLollipop.java"

# interfaces
.implements Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScanner;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mBootloaderAddress:Ljava/lang/String;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceAddressIncremented:Ljava/lang/String;

.field private mFound:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mFound:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mFound:Z

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mBootloaderAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mDeviceAddressIncremented:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mBootloaderAddress:Ljava/lang/String;

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mFound:Z

    .line 112
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v2

    .line 116
    :cond_1
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public searchFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/16 v6, 0xf

    const/4 v9, 0x0

    .line 46
    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "fistBytes":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "lastByte":Ljava/lang/String;
    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x10

    invoke-static {v2, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "lastByteIncremented":Ljava/lang/String;
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mDeviceAddress:Ljava/lang/String;

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mDeviceAddressIncremented:Ljava/lang/String;

    .line 52
    iput-object v10, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mBootloaderAddress:Ljava/lang/String;

    .line 53
    iput-boolean v9, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mFound:Z

    .line 56
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop$1;

    invoke-direct {v7, p0}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop$1;-><init>(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;)V

    const-string v8, "Scanner timer"

    invoke-direct {v6, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 78
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 79
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v4

    .line 87
    .local v4, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    new-instance v6, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v6}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v5

    .line 88
    .local v5, "settings":Landroid/bluetooth/le/ScanSettings;
    invoke-virtual {v4, v10, v5, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 91
    :try_start_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    :try_start_1
    iget-boolean v6, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mFound:Z

    if-nez v6, :cond_0

    .line 93
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_0
    move-exception v6

    .line 99
    :goto_1
    invoke-virtual {v4, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 100
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;->mBootloaderAddress:Ljava/lang/String;

    return-object v6

    .line 94
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
