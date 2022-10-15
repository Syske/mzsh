.class public Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;
.super Ljava/lang/Object;
.source "BootloaderScannerJB.java"

# interfaces
.implements Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScanner;
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mFound:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mFound:Z

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mDeviceAddressIncremented:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mFound:Z

    .line 98
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v2

    .line 102
    :cond_1
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public searchFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xf

    const/4 v7, 0x0

    .line 41
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "fistBytes":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "lastByte":Ljava/lang/String;
    const-string v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x10

    invoke-static {v2, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "lastByteIncremented":Ljava/lang/String;
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mDeviceAddress:Ljava/lang/String;

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mDeviceAddressIncremented:Ljava/lang/String;

    .line 47
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    .line 48
    iput-boolean v7, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mFound:Z

    .line 51
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;-><init>(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;)V

    const-string v6, "Scanner timer"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 73
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 74
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 77
    :try_start_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    :try_start_1
    iget-boolean v4, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mFound:Z

    if-nez v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :catch_0
    move-exception v4

    .line 85
    :goto_1
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 86
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    return-object v4

    .line 80
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
