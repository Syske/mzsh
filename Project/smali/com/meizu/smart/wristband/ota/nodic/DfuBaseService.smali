.class public Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
.super Landroid/app/IntentService;
.source "DfuBaseService.java"


# static fields
.field public static final ACTION_ABORT:I = 0x2

.field public static final ACTION_PAUSE:I = 0x0

.field public static final ACTION_RESUME:I = 0x1

.field private static final BOARD_SEND_UUID:Ljava/util/UUID;

.field public static final BOARD_SERVICE_UUID:Ljava/util/UUID;

.field private static final BOARD_STATE_UUID:Ljava/util/UUID;

.field public static final BROADCAST_ACTION:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

.field public static final BROADCAST_ERROR:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

.field public static final BROADCAST_LOG:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

.field public static final BROADCAST_PROGRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

.field private static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field public static final DFU_STATUS_CRC_ERROR:I = 0x5

.field public static final DFU_STATUS_DATA_SIZE_EXCEEDS_LIMIT:I = 0x4

.field public static final DFU_STATUS_INVALID_STATE:I = 0x2

.field public static final DFU_STATUS_NOT_SUPPORTED:I = 0x3

.field public static final DFU_STATUS_OPERATION_FAILED:I = 0x6

.field public static final DFU_STATUS_SUCCESS:I = 0x1

.field private static final DFU_VERSION:Ljava/util/UUID;

.field public static final ERROR_BLUETOOTH_DISABLED:I = 0x100a

.field public static final ERROR_CHARACTERISTICS_NOT_FOUND:I = 0x1007

.field public static final ERROR_CONNECTION_MASK:I = 0x4000

.field public static final ERROR_CONNECTION_STATE_MASK:I = 0x8000

.field public static final ERROR_DEVICE_DISCONNECTED:I = 0x1000

.field public static final ERROR_FILE_ERROR:I = 0x1002

.field public static final ERROR_FILE_INVALID:I = 0x1003

.field public static final ERROR_FILE_IO_EXCEPTION:I = 0x1004

.field public static final ERROR_FILE_NOT_FOUND:I = 0x1001

.field public static final ERROR_FILE_TYPE_UNSUPPORTED:I = 0x1009

.field public static final ERROR_INVALID_RESPONSE:I = 0x1008

.field public static final ERROR_MASK:I = 0x1000

.field public static final ERROR_REMOTE_MASK:I = 0x2000

.field public static final ERROR_SERVICE_DISCOVERY_NOT_STARTED:I = 0x1005

.field public static final ERROR_SERVICE_NOT_FOUND:I = 0x1006

.field public static final ERROR_TYPE_COMMUNICATION:I = 0x2

.field public static final ERROR_TYPE_COMMUNICATION_STATE:I = 0x1

.field public static final ERROR_TYPE_DFU_REMOTE:I = 0x3

.field public static final ERROR_TYPE_OTHER:I = 0x0

.field public static final EXTRA_ACTION:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

.field public static final EXTRA_AVG_SPEED_B_PER_MS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

.field public static final EXTRA_DATA:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

.field public static final EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

.field public static final EXTRA_ERROR_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

.field public static final EXTRA_FILE_MIME_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

.field public static final EXTRA_FILE_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

.field public static final EXTRA_FILE_URI:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

.field public static final EXTRA_INIT_FILE_PATH:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

.field public static final EXTRA_INIT_FILE_URI:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

.field public static final EXTRA_KEEP_BOND:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

.field public static final EXTRA_LOG_LEVEL:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

.field public static final EXTRA_LOG_MESSAGE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

.field public static final EXTRA_PARTS_TOTAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_PART_CURRENT:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PROGRESS"

.field public static final EXTRA_RESTORE_BOND:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

.field public static final EXTRA_SPEED_B_PER_MS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

.field private static final GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

.field private static final HEX_ARRAY:[C

.field private static final INDICATIONS:I = 0x2

.field public static final LOG_LEVEL_APPLICATION:I = 0xa

.field public static final LOG_LEVEL_DEBUG:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x14

.field public static final LOG_LEVEL_INFO:I = 0x5

.field public static final LOG_LEVEL_VERBOSE:I = 0x1

.field public static final LOG_LEVEL_WARNING:I = 0xf

.field private static final MAX_PACKET_SIZE:I = 0x14

.field public static final MIME_TYPE_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_ZIP:Ljava/lang/String; = "application/zip"

.field private static final NOTIFICATIONS:I = 0x1

.field public static final NOTIFICATION_ID:I = 0x11b

.field private static final OP_CODE_ACTIVATE_AND_RESET:[B

.field private static final OP_CODE_ACTIVATE_AND_RESET_KEY:I = 0x5

.field private static final OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

.field private static final OP_CODE_INIT_DFU_PARAMS_KEY:I = 0x2

.field private static final OP_CODE_INIT_DFU_PARAMS_START:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_KEY:I = 0x11

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ_KEY:I = 0x8

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE_KEY:I = 0x3

.field private static final OP_CODE_RESET:[B

.field private static final OP_CODE_RESET_KEY:I = 0x6

.field private static final OP_CODE_RESPONSE_CODE_KEY:I = 0x10

.field private static final OP_CODE_START_DFU:[B

.field private static final OP_CODE_START_DFU_KEY:I = 0x1

.field private static final OP_CODE_VALIDATE:[B

.field private static final OP_CODE_VALIDATE_KEY:I = 0x4

.field public static final PROGRESS_ABORTED:I = -0x7

.field public static final PROGRESS_COMPLETED:I = -0x6

.field public static final PROGRESS_CONNECTING:I = -0x1

.field public static final PROGRESS_DISCONNECTING:I = -0x5

.field public static final PROGRESS_ENABLING_DFU_MODE:I = -0x3

.field public static final PROGRESS_STARTING:I = -0x2

.field public static final PROGRESS_VALIDATING:I = -0x4

.field private static final SERVICE_CHANGED_UUID:Ljava/util/UUID;

.field private static final STATE_CLOSED:I = -0x5

.field private static final STATE_CONNECTED:I = -0x2

.field private static final STATE_CONNECTED_AND_READY:I = -0x3

.field private static final STATE_CONNECTING:I = -0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STATE_DISCONNECTING:I = -0x4

.field private static final TAG:Ljava/lang/String; = "DfuBaseService"

.field public static final TYPE_APPLICATION:I = 0x4

.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_BOOTLOADER:I = 0x2

.field public static final TYPE_SOFT_DEVICE:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAborted:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBuffer:[B

.field private mBytesConfirmed:I

.field private mBytesSent:I

.field private mConnectionState:I

.field private final mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDfuActionReceiver:Landroid/content/BroadcastReceiver;

.field private mError:I

.field private mFileType:I

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mImageSizeInBytes:I

.field private mImageSizeSent:Z

.field private mInitPacketSent:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mLastBytesSent:I

.field private mLastProgress:I

.field private mLastProgressTime:J

.field private final mLock:Ljava/lang/Object;

.field private mNotificationsEnabled:Z

.field private mPacketsBeforeNotification:I

.field private mPacketsSentSinceNotification:I

.field private mPartCurrent:I

.field private mPartsTotal:I

.field private mPaused:Z

.field private mReceivedData:[B

.field private mRemoteErrorOccurred:Z

.field private mRequestCompleted:Z

.field private mResetRequestSent:Z

.field private mServiceChangedIndicationsEnabled:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const-wide v6, -0x7fffff7fa064cb05L    # -2.724079460785E-312

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$1;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$1;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->EXTRA_PARTS_TOTAL:Ljava/lang/ThreadLocal;

    .line 515
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_START_DFU:[B

    .line 516
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_START:[B

    .line 517
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    .line 518
    new-array v0, v3, [B

    aput-byte v4, v0, v2

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    .line 519
    new-array v0, v3, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v2

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_VALIDATE:[B

    .line 520
    new-array v0, v3, [B

    const/4 v1, 0x5

    aput-byte v1, v0, v2

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_ACTIVATE_AND_RESET:[B

    .line 521
    new-array v0, v3, [B

    const/4 v1, 0x6

    aput-byte v1, v0, v2

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_RESET:[B

    .line 523
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    .line 526
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x180100001000L

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    .line 527
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x2a0500001000L

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    .line 531
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15341212efdeL

    const-wide v4, 0x1523785feabcd123L    # 7.580602127171364E-207

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->DFU_VERSION:Ljava/util/UUID;

    .line 532
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x290200001000L

    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    .line 534
    const-string v0, "00000005-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->BOARD_SEND_UUID:Ljava/util/UUID;

    .line 535
    const-string v0, "00000006-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->BOARD_STATE_UUID:Ljava/util/UUID;

    .line 536
    const-string v0, "0000190C-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->BOARD_SERVICE_UUID:Ljava/util/UUID;

    .line 542
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->HEX_ARRAY:[C

    return-void

    .line 515
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    .line 516
    nop

    :array_1
    .array-data 1
        0x2t
        0x0t
    .end array-data

    .line 517
    nop

    :array_2
    .array-data 1
        0x2t
        0x1t
    .end array-data

    .line 523
    nop

    :array_3
    .array-data 1
        0x8t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1044
    const-string v0, "DfuBaseService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 544
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBuffer:[B

    .line 548
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    .line 578
    const/16 v0, 0xa

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsBeforeNotification:I

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    .line 651
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 671
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    .line 701
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$4;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$4;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 723
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 1039
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastProgress:I

    .line 1045
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mNotificationsEnabled:Z

    return p1
.end method

.method static synthetic access$1400()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->BOARD_SEND_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeSent:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeSent:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInitPacketSent:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInitPacketSent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesSent:I

    return v0
.end method

.method static synthetic access$1702(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesSent:I

    return p1
.end method

.method static synthetic access$1800(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsSentSinceNotification:I

    return v0
.end method

.method static synthetic access$1802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsSentSinceNotification:I

    return p1
.end method

.method static synthetic access$1808(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsSentSinceNotification:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsSentSinceNotification:I

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsBeforeNotification:I

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeInBytes:I

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->waitIfPaused()V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRemoteErrorOccurred:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRemoteErrorOccurred:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mResetRequestSent:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)[B
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBuffer:[B

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "x3"    # [B
    .param p4, "x4"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    return-void
.end method

.method static synthetic access$2800(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification()V

    return-void
.end method

.method static synthetic access$2900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # [B

    .prologue
    .line 109
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    return-object p1
.end method

.method static synthetic access$3100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "x2"    # Ljava/util/UUID;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesConfirmed:I

    return p1
.end method

.method static synthetic access$3300()[C
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->HEX_ARRAY:[C

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    return p1
.end method

.method static synthetic access$602(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    return v0
.end method

.method static synthetic access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private close(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 2067
    const-string v0, "Cleaning up..."

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2068
    const/4 v0, 0x0

    const-string v1, "gatt.close()"

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2069
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2070
    const/4 v0, -0x5

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    .line 2071
    return-void
.end method

.method private connect(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 1983
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1984
    const/4 v2, 0x0

    .line 2002
    :goto_0
    return-object v2

    .line 1986
    :cond_0
    iput v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    .line 1988
    const-string v3, "Connecting to the device..."

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1989
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1990
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 1995
    .local v2, "gatt":Landroid/bluetooth/BluetoothGatt;
    :try_start_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v3, v6, :cond_1

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_2

    :cond_1
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v3, :cond_4

    .line 1997
    :cond_3
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 1998
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1999
    :catch_0
    move-exception v1

    .line 2000
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1998
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2548
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 2571
    :goto_0
    return v1

    .line 2552
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    .line 2554
    const-string v2, "Starting pairing..."

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2555
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 2556
    const-string v2, "gatt.getDevice().createBond()"

    invoke-direct {p0, v4, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2557
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    .line 2564
    .local v1, "result":Z
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2565
    :goto_2
    :try_start_1
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-nez v2, :cond_2

    .line 2566
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 2567
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2568
    :catch_0
    move-exception v0

    .line 2569
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2559
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "result":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->createBondApi18(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 2567
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createBondApi18(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2579
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "createBond"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2580
    .local v0, "createBond":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 2581
    const/4 v2, 0x0

    const-string v4, "gatt.getDevice().createBond() (hidden)"

    invoke-direct {p0, v2, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2582
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2587
    .end local v0    # "createBond":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 2584
    :catch_0
    move-exception v1

    .line 2585
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DfuBaseService"

    const-string v4, "An exception occurred while creating bond"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 2587
    goto :goto_0
.end method

.method private disconnect(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 2035
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-nez v0, :cond_0

    .line 2045
    :goto_0
    return-void

    .line 2038
    :cond_0
    const/4 v0, -0x4

    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    .line 2040
    const-string v0, "Disconnecting from the device..."

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2044
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->waitUntilDisconnected()V

    goto :goto_0
.end method

.method private enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x3

    const/4 v5, 0x1

    .line 2175
    if-ne p3, v5, :cond_0

    const-string v0, "notifications"

    .line 2176
    .local v0, "debugString":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v3, v6, :cond_1

    .line 2177
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v3, v4, v5}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 2175
    .end local v0    # "debugString":Ljava/lang/String;
    :cond_0
    const-string v0, "indications"

    goto :goto_0

    .line 2179
    .restart local v0    # "debugString":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    .line 2180
    iput v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2181
    if-ne p3, v5, :cond_2

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mNotificationsEnabled:Z

    if-nez v3, :cond_3

    :cond_2
    if-ne p3, v8, :cond_4

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    if-eqz v3, :cond_4

    .line 2212
    :cond_3
    return-void

    .line 2184
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2188
    invoke-virtual {p1, p2, v5}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 2191
    sget-object v3, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 2192
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-ne p3, v5, :cond_9

    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_1
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 2193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatt.writeDescriptor("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p3, v5, :cond_a

    const-string v3, ", value=0x01-00)"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2194
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 2198
    :try_start_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    :goto_3
    if-ne p3, v5, :cond_5

    :try_start_1
    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mNotificationsEnabled:Z

    if-eqz v3, :cond_6

    :cond_5
    if-ne p3, v8, :cond_7

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    if-nez v3, :cond_7

    :cond_6
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v3, v6, :cond_7

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v3, :cond_b

    .line 2201
    :cond_8
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 2202
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2203
    :catch_0
    move-exception v2

    .line 2204
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2206
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_4
    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v3, :cond_c

    .line 2207
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v3

    .line 2192
    :cond_9
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_1

    .line 2193
    :cond_a
    const-string v3, ", value=0x02-00)"

    goto :goto_2

    .line 2202
    :cond_b
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2208
    :cond_c
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v3, :cond_d

    .line 2209
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v3, v4, v5}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 2210
    :cond_d
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v3, v6, :cond_3

    .line 2211
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v3, v4, v5}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 2893
    const/4 v1, 0x0

    .line 2894
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 2895
    .local v0, "mService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2896
    move-object v1, v0

    goto :goto_0

    .line 2899
    .end local v0    # "mService":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    return-object v1
.end method

.method private getStatusCode([BI)I
    .locals 4
    .param p1, "response"    # [B
    .param p2, "request"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 2113
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v3

    if-ne v0, p2, :cond_0

    aget-byte v0, p1, v2

    if-lt v0, v3, :cond_0

    aget-byte v0, p1, v2

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 2114
    :cond_0
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;

    const-string v1, "Invalid response received"

    invoke-direct {v0, v1, p1, p2}, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;-><init>(Ljava/lang/String;[BI)V

    throw v0

    .line 2115
    :cond_1
    aget-byte v0, p1, v2

    return v0
.end method

.method private initialize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2832
    const-string v2, "bluetooth"

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 2833
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-nez v0, :cond_0

    .line 2834
    const-string v2, "Unable to initialize BluetoothManager."

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 2844
    :goto_0
    return v1

    .line 2838
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2839
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 2840
    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2844
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isServiceChangedCCCDEnabled(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x3

    const/4 v2, 0x0

    .line 2225
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v3, v4, :cond_0

    .line 2226
    new-instance v2, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v3, "Unable to read Service Changed CCCD"

    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v2, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2228
    :cond_0
    if-nez p2, :cond_2

    .line 2259
    :cond_1
    :goto_0
    return v2

    .line 2231
    :cond_2
    sget-object v3, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 2232
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v0, :cond_1

    .line 2235
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    .line 2236
    iput v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2238
    const-string v2, "Reading Service Changed CCCD value..."

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2239
    const/4 v2, 0x1

    const-string v3, "Reading Service Changed CCCD value..."

    invoke-direct {p0, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2241
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 2245
    :try_start_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2246
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v2, v4, :cond_3

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v2, :cond_5

    .line 2247
    :cond_4
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 2248
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2249
    :catch_0
    move-exception v1

    .line 2250
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2252
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_6

    .line 2253
    new-instance v2, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v2

    .line 2248
    :cond_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2254
    :cond_6
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v2, :cond_7

    .line 2255
    new-instance v2, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v3, "Unable to read Service Changed CCCD"

    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v2, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2256
    :cond_7
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v2, v4, :cond_8

    .line 2257
    new-instance v2, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v3, "Unable to read Service Changed CCCD"

    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v2, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2259
    :cond_8
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2870
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2850
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2855
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2865
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2860
    return-void
.end method

.method private static makeDfuActionIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 1048
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1049
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1050
    return-object v0
.end method

.method private openInputStream(Landroid/net/Uri;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 9
    .param p1, "stream"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mbrSize"    # I
    .param p4, "types"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1956
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 1957
    .local v8, "is":Ljava/io/InputStream;
    const-string v0, "application/zip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;

    invoke-direct {v0, v8, p3, p4}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    move-object v8, v0

    .line 1972
    .end local v8    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v8

    .line 1960
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v1

    .line 1961
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1963
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1964
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1966
    .local v7, "fileName":Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1967
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;

    invoke-direct {v0, v8, p3}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v0

    goto :goto_0

    .end local v7    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private openInputStream(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mbrSize"    # I
    .param p4, "types"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1938
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1939
    .local v0, "is":Ljava/io/InputStream;
    const-string v1, "application/zip"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1940
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;

    invoke-direct {v1, v0, p3, p4}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    move-object v0, v1

    .line 1943
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 1941
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1942
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;

    invoke-direct {v1, v0, p3}, Lcom/meizu/smart/wristband/ota/nodic/HexInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method private parse([B)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 2873
    if-nez p1, :cond_0

    .line 2874
    const-string v4, ""

    .line 2888
    :goto_0
    return-object v4

    .line 2876
    :cond_0
    array-length v1, p1

    .line 2877
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 2878
    const-string v4, ""

    goto :goto_0

    .line 2880
    :cond_1
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [C

    .line 2881
    .local v2, "out":[C
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 2882
    aget-byte v4, p1, v0

    and-int/lit16 v3, v4, 0xff

    .line 2883
    .local v3, "v":I
    mul-int/lit8 v4, v0, 0x3

    sget-object v5, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 2884
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->HEX_ARRAY:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 2885
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_2

    .line 2886
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    const/16 v5, 0x2d

    aput-char v5, v2, v4

    .line 2881
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2888
    .end local v3    # "v":I
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private readNotificationResponse()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x3

    .line 2640
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2642
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2643
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    if-nez v1, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v1, :cond_2

    .line 2644
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2645
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2649
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_3

    .line 2650
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 2645
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2651
    :cond_3
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v1, :cond_4

    .line 2652
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v2, "Unable to write Op Code"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2653
    :cond_4
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v1, v3, :cond_5

    .line 2654
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v2, "Unable to write Op Code"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2655
    :cond_5
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    return-object v1
.end method

.method private readVersion(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x3

    .line 2129
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v2, v4, :cond_0

    .line 2130
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v2, "Unable to read version number"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2132
    :cond_0
    if-nez p2, :cond_1

    .line 2160
    :goto_0
    return v1

    .line 2135
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    .line 2136
    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2138
    const-string v2, "Reading DFU version number..."

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2139
    const/4 v2, 0x1

    const-string v3, "Reading DFU version number..."

    invoke-direct {p0, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2141
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2145
    :try_start_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2146
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v2, :cond_4

    .line 2147
    :cond_3
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 2148
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2149
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2152
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_5

    .line 2153
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 2148
    :cond_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2154
    :cond_5
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v2, :cond_6

    .line 2155
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v2, "Unable to read version number"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2156
    :cond_6
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v2, v4, :cond_7

    .line 2157
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v2, "Unable to read version number"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2160
    :cond_7
    const/16 v2, 0x12

    invoke-virtual {p2, v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "force"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2086
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 2087
    :cond_0
    const-string v3, "gatt.refresh()"

    invoke-direct {p0, v5, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2092
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "refresh"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2093
    .local v1, "refresh":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 2094
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2095
    .local v2, "success":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refreshing result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    .end local v1    # "refresh":Ljava/lang/reflect/Method;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return-void

    .line 2097
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "An exception occurred while refreshing device"

    invoke-direct {p0, v3, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2099
    const/16 v3, 0xf

    const-string v4, "Refreshing failed"

    invoke-direct {p0, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 2597
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 2626
    :goto_0
    return v2

    .line 2600
    :cond_0
    const-string v3, "Removing bond information..."

    invoke-direct {p0, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2601
    const/4 v2, 0x0

    .line 2606
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "removeBond"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2607
    .local v1, "removeBond":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 2608
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    .line 2609
    const/4 v3, 0x0

    const-string v4, "gatt.getDevice().removeBond() (hidden)"

    invoke-direct {p0, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2610
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2614
    :try_start_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2615
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-nez v3, :cond_2

    .line 2616
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 2617
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2618
    :catch_0
    move-exception v0

    .line 2619
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2622
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 2617
    :cond_2
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2623
    .end local v1    # "removeBond":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 2624
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DfuBaseService"

    const-string v4, "An exception occurred while removing bond information"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendErrorBroadcast(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 2797
    new-instance v0, Landroid/content/Intent;

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2798
    .local v0, "broadcast":Landroid/content/Intent;
    and-int/lit16 v1, p1, 0x4000

    if-lez v1, :cond_0

    .line 2799
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    and-int/lit16 v2, p1, -0x4001

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2800
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2811
    :goto_0
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2812
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2813
    return-void

    .line 2801
    :cond_0
    const v1, 0x8000

    and-int/2addr v1, p1

    if-lez v1, :cond_1

    .line 2802
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    const v2, -0x8001

    and-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2803
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2804
    :cond_1
    and-int/lit16 v1, p1, 0x2000

    if-lez v1, :cond_2

    .line 2805
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2806
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2808
    :cond_2
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2809
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendLogBroadcast(ILjava/lang/String;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DFU] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2817
    .local v1, "fullMessage":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2818
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2819
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2820
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2821
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2822
    return-void
.end method

.method private sendProgressBroadcast(I)V
    .locals 12
    .param p1, "progress"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 2780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2781
    .local v2, "now":J
    iget-wide v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastProgressTime:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesSent:I

    iget v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastBytesSent:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-wide v8, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastProgressTime:J

    sub-long v8, v2, v8

    long-to-float v7, v8

    div-float v4, v6, v7

    .line 2782
    .local v4, "speed":F
    :goto_0
    iget-wide v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mStartTime:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesSent:I

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    div-float v0, v5, v6

    .line 2783
    .local v0, "avgSpeed":F
    :goto_1
    iput-wide v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastProgressTime:J

    .line 2784
    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesSent:I

    iput v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastBytesSent:I

    .line 2786
    new-instance v1, Landroid/content/Intent;

    const-string v5, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2787
    .local v1, "broadcast":Landroid/content/Intent;
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2788
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2789
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    iget v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartCurrent:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2790
    sget-object v5, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->EXTRA_PARTS_TOTAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartsTotal:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2791
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2792
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2793
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2794
    return-void

    .end local v0    # "avgSpeed":F
    .end local v1    # "broadcast":Landroid/content/Intent;
    .end local v4    # "speed":F
    :cond_0
    move v4, v5

    .line 2781
    goto :goto_0

    .restart local v4    # "speed":F
    :cond_1
    move v0, v5

    .line 2782
    goto :goto_1
.end method

.method private setNumberOfPackets([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "value"    # I

    .prologue
    .line 1924
    const/4 v0, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1925
    const/4 v0, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1926
    return-void
.end method

.method private terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "error"    # I

    .prologue
    .line 2012
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eqz v0, :cond_0

    .line 2013
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V

    .line 2018
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->disconnect(Landroid/bluetooth/BluetoothGatt;)V

    .line 2019
    const/4 v0, 0x5

    const-string v1, "Disconnected"

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2023
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 2024
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 2025
    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V

    .line 2026
    return-void
.end method

.method private updateProgressNotification()V
    .locals 3

    .prologue
    .line 2662
    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesSent:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeInBytes:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 2663
    .local v0, "progress":I
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastProgress:I

    if-ne v1, v0, :cond_0

    .line 2668
    :goto_0
    return-void

    .line 2666
    :cond_0
    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastProgress:I

    .line 2667
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V

    goto :goto_0
.end method

.method private updateProgressNotification(I)V
    .locals 13
    .param p1, "progress"    # I

    .prologue
    .line 2677
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    .line 2678
    .local v2, "deviceAddress":Ljava/lang/String;
    iget-object v9, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceName:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceName:Ljava/lang/String;

    .line 2682
    .local v3, "deviceName":Ljava/lang/String;
    :goto_0
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v9, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1080088

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 2684
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v9, -0x777778

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2686
    packed-switch p1, :pswitch_data_0

    .line 2713
    const/16 v9, 0x1000

    if-lt p1, v9, :cond_2

    .line 2715
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0800f5

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x1080089

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802f2

    .line 2716
    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/high16 v10, -0x10000

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2725
    :goto_1
    const/16 v9, 0x1000

    if-ge p1, v9, :cond_5

    .line 2726
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendProgressBroadcast(I)V

    .line 2731
    :goto_2
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getNotificationTarget()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v4, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2732
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2733
    const-string v9, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2734
    const-string v9, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    invoke-virtual {v4, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2735
    const-string v9, "no.nordicsemi.android.dfu.extra.EXTRA_PROGRESS"

    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2736
    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {p0, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2737
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2740
    const/4 v9, -0x7

    if-eq p1, v9, :cond_0

    const/4 v9, -0x6

    if-eq p1, v9, :cond_0

    const/16 v9, 0x1000

    if-ge p1, v9, :cond_0

    .line 2741
    new-instance v0, Landroid/content/Intent;

    const-string v9, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2742
    .local v0, "abortIntent":Landroid/content/Intent;
    const-string v9, "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2743
    const/4 v9, 0x1

    const/high16 v10, 0x8000000

    invoke-static {p0, v9, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2744
    .local v5, "pendingAbortIntent":Landroid/app/PendingIntent;
    const v9, 0x7f0200ec

    const v10, 0x7f0800ea

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2749
    .end local v0    # "abortIntent":Landroid/content/Intent;
    .end local v5    # "pendingAbortIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 2678
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "deviceName":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    const v9, 0x7f0802fe

    invoke-virtual {p0, v9}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 2688
    .restart local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v3    # "deviceName":Ljava/lang/String;
    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802ee

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802ef

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2691
    :pswitch_1
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802f4

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802f5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2694
    :pswitch_2
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802f6

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802f7

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 2695
    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2698
    :pswitch_3
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802fc

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802fd

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2701
    :pswitch_4
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802f0

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802f1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 2702
    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2705
    :pswitch_5
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802ec

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x1080089

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802ed

    .line 2706
    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, -0xff47e6

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2709
    :pswitch_6
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802e9

    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x1080089

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f0802ea

    .line 2710
    invoke-virtual {p0, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2719
    :cond_2
    iget v9, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartsTotal:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const v9, 0x7f0802f8

    invoke-virtual {p0, v9}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2720
    .local v8, "title":Ljava/lang/String;
    :goto_3
    iget v9, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mFileType:I

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_4

    const v9, 0x7f0802fa

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2721
    .local v7, "text":Ljava/lang/String;
    :goto_4
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 2719
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :cond_3
    const v9, 0x7f0802fb

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartCurrent:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartsTotal:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 2720
    .restart local v8    # "title":Ljava/lang/String;
    :cond_4
    const v9, 0x7f0802f9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 2728
    .end local v8    # "title":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendErrorBroadcast(I)V

    goto/16 :goto_2

    .line 2686
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uploadFirmwareImage(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/InputStream;)[B
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "packetCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x3

    .line 2479
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    .line 2480
    const/4 v3, 0x0

    iput v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2482
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBuffer:[B

    .line 2484
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 2485
    .local v2, "size":I
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending firmware to characteristic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2486
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    :try_end_0
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2494
    :try_start_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2495
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    if-nez v3, :cond_0

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v3, v6, :cond_0

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v3, :cond_2

    .line 2496
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2497
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2498
    :catch_0
    move-exception v1

    .line 2499
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2501
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v3, :cond_3

    .line 2502
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v3

    .line 2487
    .end local v2    # "size":I
    :catch_1
    move-exception v1

    .line 2488
    .local v1, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v4, "HEX file not valid"

    const/16 v5, 0x1003

    invoke-direct {v3, v4, v5}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 2489
    .end local v1    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;
    :catch_2
    move-exception v1

    .line 2490
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v4, "Error while reading file"

    const/16 v5, 0x1004

    invoke-direct {v3, v4, v5}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 2497
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "size":I
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2503
    :cond_3
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v3, :cond_4

    .line 2504
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v4, "Uploading Firmware Image failed"

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v3, v4, v5}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 2505
    :cond_4
    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v3, v6, :cond_5

    .line 2506
    new-instance v3, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v4, "Uploading Firmware Image failed: device disconnected"

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v3, v4, v5}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 2508
    :cond_5
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    return-object v3
.end method

.method private waitIfPaused()V
    .locals 3

    .prologue
    .line 2536
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2538
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2539
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2543
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 2544
    return-void

    .line 2543
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private waitUntilDisconnected()V
    .locals 3

    .prologue
    .line 2052
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    :goto_0
    :try_start_1
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v1, :cond_0

    .line 2054
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2055
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2056
    :catch_0
    move-exception v0

    .line 2057
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2059
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 2055
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "imageSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x3

    const/4 v3, 0x0

    .line 2338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    .line 2339
    iput v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2340
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeSent:Z

    .line 2342
    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2343
    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2344
    const/16 v1, 0x14

    invoke-virtual {p2, p3, v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing to characteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gatt.writeCharacteristic("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2347
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2351
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2352
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeSent:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v1, :cond_2

    .line 2353
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2354
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2355
    :catch_0
    move-exception v0

    .line 2356
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2358
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_3

    .line 2359
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 2354
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2360
    :cond_3
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v1, :cond_4

    .line 2361
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v2, "Unable to write Image Size"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2362
    :cond_4
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v1, v4, :cond_5

    .line 2363
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v2, "Unable to write Image Size"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2364
    :cond_5
    return-void
.end method

.method private writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "softDeviceImageSize"    # I
    .param p4, "bootloaderImageSize"    # I
    .param p5, "appImageSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x3

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 2387
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    .line 2388
    iput v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2389
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeSent:Z

    .line 2390
    const-string/jumbo v1, "\u8fdb\u5165writeImageSize"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2392
    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2393
    invoke-virtual {p2, p3, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2394
    const/4 v1, 0x4

    invoke-virtual {p2, p4, v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2395
    const/16 v1, 0x8

    invoke-virtual {p2, p5, v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing to characteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gatt.writeCharacteristic("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2398
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2402
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeSent:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v1, :cond_2

    .line 2404
    :cond_1
    const-string/jumbo v1, "\u7b49\u5f85\u54cd\u5e94 mLock.wait()"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 2405
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2407
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2408
    :catch_0
    move-exception v0

    .line 2409
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2411
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_3

    .line 2412
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 2407
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2413
    :cond_3
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v1, :cond_4

    .line 2414
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v2, "Unable to write Image Sizes"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2415
    :cond_4
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v1, v4, :cond_5

    .line 2416
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v2, "Unable to write Image Sizes"

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2417
    :cond_5
    return-void
.end method

.method private writeInitPacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "buffer"    # [B
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x3

    const/4 v4, 0x0

    .line 2433
    move-object v1, p3

    .line 2434
    .local v1, "locBuffer":[B
    array-length v2, p3

    if-eq v2, p4, :cond_0

    .line 2435
    new-array v1, p4, [B

    .line 2436
    invoke-static {p3, v4, v1, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2438
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    .line 2439
    iput v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2440
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInitPacketSent:Z

    .line 2442
    invoke-virtual {p2, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2443
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending init packet (Value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->parse([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing to characteristic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.writeCharacteristic("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2447
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2451
    :try_start_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2452
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInitPacketSent:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v2, :cond_3

    .line 2453
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2454
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2455
    :catch_0
    move-exception v0

    .line 2456
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2458
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_4

    .line 2459
    new-instance v2, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v2

    .line 2454
    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2460
    :cond_4
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v2, :cond_5

    .line 2461
    new-instance v2, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v3, "Unable to write Init DFU Parameters"

    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v2, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2462
    :cond_5
    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v2, v5, :cond_6

    .line 2463
    new-instance v2, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    const-string v3, "Unable to write Init DFU Parameters"

    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v2, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2464
    :cond_6
    return-void
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2275
    aget-byte v1, p3, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    aget-byte v1, p3, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2276
    .local v0, "reset":Z
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    .line 2277
    return-void
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B
    .param p4, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;,
            Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x3

    const/4 v4, 0x0

    .line 2294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mReceivedData:[B

    .line 2295
    iput v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 2296
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    .line 2301
    iput-boolean p4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mResetRequestSent:Z

    .line 2303
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2304
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing to characteristic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gatt.writeCharacteristic("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2306
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2310
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2311
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-ne v1, v5, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    if-eqz v1, :cond_2

    .line 2312
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2313
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2317
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_3

    .line 2318
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 2313
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2319
    :cond_3
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mResetRequestSent:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-eqz v1, :cond_4

    .line 2320
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write Op Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2321
    :cond_4
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mResetRequestSent:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    if-eq v1, v5, :cond_5

    .line 2322
    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write Op Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    invoke-direct {v1, v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2323
    :cond_5
    return-void
.end method

.method private writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "buffer"    # [B
    .param p4, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 2520
    move-object v0, p3

    .line 2521
    .local v0, "locBuffer":[B
    array-length v1, p3

    if-eq v1, p4, :cond_0

    .line 2522
    new-array v0, p4, [B

    .line 2523
    invoke-static {p3, v2, v0, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2525
    :cond_0
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2526
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2533
    return-void
.end method


# virtual methods
.method protected getNotificationTarget()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2776
    const-class v0, Lcom/meizu/smart/wristband/ota/nodic/NotificationActivity;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 1055
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 1056
    const-string/jumbo v4, "\u521d\u59cb\u5316DFUBaseService"

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1057
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->initialize()Z

    .line 1059
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    .line 1060
    .local v3, "manager":Landroid/support/v4/content/LocalBroadcastManager;
    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->makeDfuActionIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 1061
    .local v0, "actionFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1062
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1064
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1067
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v1, "bondFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1070
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->handler:Landroid/os/Handler;

    .line 1071
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1075
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 1077
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 1078
    .local v0, "manager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1080
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1081
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1082
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1083
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 61
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1087
    const-string v6, ">>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v6}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1088
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v44

    .line 1091
    .local v44, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1092
    .local v14, "deviceAddress":Ljava/lang/String;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1093
    .local v15, "deviceName":Ljava/lang/String;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1094
    .local v23, "filePath":Ljava/lang/String;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    .line 1095
    .local v25, "fileUri":Landroid/net/Uri;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1096
    .local v29, "initFilePath":Ljava/lang/String;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v30

    check-cast v30, Landroid/net/Uri;

    .line 1097
    .local v30, "initFileUri":Landroid/net/Uri;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1098
    .local v24, "fileType":I
    if-eqz v23, :cond_0

    if-nez v24, :cond_0

    .line 1099
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v57, "zip"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v24, 0x0

    .line 1100
    :cond_0
    :goto_0
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1101
    .local v37, "mimeType":Ljava/lang/String;
    if-eqz v37, :cond_4

    .line 1102
    :goto_1
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    const/16 v57, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartCurrent:I

    .line 1103
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->EXTRA_PARTS_TOTAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v57, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartsTotal:I

    .line 1106
    and-int/lit8 v6, v24, -0x8

    if-gtz v6, :cond_1

    const-string v6, "application/zip"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "application/octet-stream"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1107
    :cond_1
    const-string v6, "File type or file mime-type not supported"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1108
    const/16 v6, 0xf

    const-string v57, "File type or file mime-type not supported"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1109
    const/16 v6, 0x1009

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendErrorBroadcast(I)V

    .line 1915
    :cond_2
    :goto_2
    return-void

    .line 1099
    .end local v37    # "mimeType":Ljava/lang/String;
    :cond_3
    const/16 v24, 0x4

    goto :goto_0

    .line 1101
    .restart local v37    # "mimeType":Ljava/lang/String;
    :cond_4
    if-nez v24, :cond_5

    const-string v37, "application/zip"

    goto :goto_1

    :cond_5
    const-string v37, "application/octet-stream"

    goto :goto_1

    .line 1112
    :cond_6
    const-string v6, "application/octet-stream"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_7

    const/4 v6, 0x2

    move/from16 v0, v24

    if-eq v0, v6, :cond_7

    const/4 v6, 0x4

    move/from16 v0, v24

    if-eq v0, v6, :cond_7

    .line 1113
    const-string v6, "Unable to determine file type"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1114
    const/16 v6, 0xf

    const-string v57, "Unable to determine file type"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1115
    const/16 v6, 0x1009

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendErrorBroadcast(I)V

    goto :goto_2

    .line 1119
    :cond_7
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    .line 1120
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceName:Ljava/lang/String;

    .line 1121
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I

    .line 1122
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesSent:I

    .line 1123
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesConfirmed:I

    .line 1124
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsSentSinceNotification:I

    .line 1125
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    .line 1126
    const-wide/16 v58, 0x0

    move-wide/from16 v0, v58

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastProgressTime:J

    .line 1127
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    .line 1128
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPaused:Z

    .line 1129
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mNotificationsEnabled:Z

    .line 1130
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mResetRequestSent:Z

    .line 1131
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRequestCompleted:Z

    .line 1132
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeSent:Z

    .line 1133
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1136
    const-string v6, "settings_packet_receipt_notification_enabled"

    const/16 v57, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v57

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 1137
    .local v43, "packetReceiptNotificationEnabled":Z
    const-string v6, "settings_number_of_packets"

    const/16 v57, 0xa

    invoke-static/range {v57 .. v57}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v44

    move-object/from16 v1, v57

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1140
    .local v53, "value":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v41

    .line 1141
    .local v41, "numberOfPackets":I
    if-ltz v41, :cond_8

    const v6, 0xffff

    move/from16 v0, v41

    if-le v0, v6, :cond_9

    .line 1142
    :cond_8
    const/16 v41, 0xa

    .line 1146
    :cond_9
    :goto_3
    if-nez v43, :cond_a

    .line 1147
    const/16 v41, 0x0

    .line 1148
    :cond_a
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsBeforeNotification:I

    .line 1151
    const-string v6, "settings_mbr_size"

    const/16 v57, 0x1000

    invoke-static/range {v57 .. v57}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v44

    move-object/from16 v1, v57

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1154
    :try_start_1
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v36

    .line 1155
    .local v36, "mbrSize":I
    if-gez v36, :cond_b

    .line 1156
    const/16 v36, 0x0

    .line 1161
    :cond_b
    :goto_4
    const/4 v6, 0x1

    const-string v57, "Starting DFU service"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1166
    const/16 v33, 0x0

    .line 1167
    .local v33, "is":Ljava/io/InputStream;
    const/16 v31, 0x0

    .line 1172
    .local v31, "initIs":Ljava/io/InputStream;
    const/4 v6, 0x1

    :try_start_2
    const-string v57, "Opening file..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1173
    if-eqz v25, :cond_d

    .line 1174
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v37

    move/from16 v3, v36

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->openInputStream(Landroid/net/Uri;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v33

    .line 1179
    :goto_5
    if-eqz v30, :cond_e

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v31

    move-object/from16 v32, v31

    .line 1187
    .end local v31    # "initIs":Ljava/io/InputStream;
    .local v32, "initIs":Ljava/io/InputStream;
    :goto_6
    :try_start_3
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1188
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->available()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeInBytes:I

    .line 1190
    .local v28, "imageSizeInBytes":I
    if-nez v24, :cond_c

    const-string v6, "application/zip"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1191
    move-object/from16 v0, v33

    check-cast v0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;

    move-object/from16 v56, v0

    .line 1192
    .local v56, "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    invoke-virtual/range {v56 .. v56}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->getContentType()I

    move-result v24

    .line 1194
    .end local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    :cond_c
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mFileType:I

    .line 1196
    const-string v6, "application/zip"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1197
    move-object/from16 v0, v33

    check-cast v0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;

    move-object/from16 v56, v0

    .line 1198
    .restart local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    const/4 v6, 0x4

    move/from16 v0, v24

    if-ne v0, v6, :cond_f

    .line 1199
    invoke-virtual/range {v56 .. v56}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v6

    if-eqz v6, :cond_39

    .line 1200
    new-instance v31, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v56 .. v56}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v6

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_25
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_24
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 1206
    .end local v32    # "initIs":Ljava/io/InputStream;
    .end local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    .restart local v31    # "initIs":Ljava/io/InputStream;
    :goto_7
    const/4 v6, 0x5

    :try_start_4
    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Image file opened ("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeInBytes:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " bytes in total)"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1225
    const/4 v6, 0x1

    :try_start_5
    const-string v57, "Connecting to DFU target..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1226
    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V

    .line 1228
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->connect(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v7

    .line 1230
    .local v7, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-nez v7, :cond_10

    .line 1231
    const-string v6, "Bluetooth adapter disabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1232
    const/16 v6, 0x14

    const-string v57, "Bluetooth adapter disabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1233
    const/16 v6, 0x100a

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 1911
    :catch_0
    move-exception v6

    goto/16 :goto_2

    .line 1143
    .end local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v28    # "imageSizeInBytes":I
    .end local v31    # "initIs":Ljava/io/InputStream;
    .end local v33    # "is":Ljava/io/InputStream;
    .end local v36    # "mbrSize":I
    .end local v41    # "numberOfPackets":I
    :catch_1
    move-exception v17

    .line 1144
    .local v17, "e":Ljava/lang/NumberFormatException;
    const/16 v41, 0xa

    .restart local v41    # "numberOfPackets":I
    goto/16 :goto_3

    .line 1157
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v17

    .line 1158
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    const/16 v36, 0x1000

    .restart local v36    # "mbrSize":I
    goto/16 :goto_4

    .line 1176
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .restart local v31    # "initIs":Ljava/io/InputStream;
    .restart local v33    # "is":Ljava/io/InputStream;
    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v37

    move/from16 v3, v36

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->openInputStream(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v33

    goto/16 :goto_5

    .line 1182
    :cond_e
    if-eqz v29, :cond_3a

    .line 1184
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v31    # "initIs":Ljava/io/InputStream;
    .restart local v32    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 1202
    .restart local v28    # "imageSizeInBytes":I
    .restart local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    :cond_f
    :try_start_8
    invoke-virtual/range {v56 .. v56}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->getSystemInit()[B

    move-result-object v6

    if-eqz v6, :cond_39

    .line 1203
    new-instance v31, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v56 .. v56}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->getSystemInit()[B

    move-result-object v6

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_26
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_25
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_24
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .end local v32    # "initIs":Ljava/io/InputStream;
    .restart local v31    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 1207
    .end local v28    # "imageSizeInBytes":I
    .end local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    :catch_3
    move-exception v17

    .line 1208
    .local v17, "e":Ljava/lang/SecurityException;
    :goto_8
    :try_start_9
    const-string v6, "A security exception occurred while opening file"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1209
    const/16 v6, 0x1001

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    .line 1911
    :catch_4
    move-exception v6

    goto/16 :goto_2

    .line 1211
    .end local v17    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v17

    .line 1212
    .local v17, "e":Ljava/io/FileNotFoundException;
    :goto_9
    :try_start_b
    const-string v6, "An exception occurred while opening file"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1213
    const/16 v6, 0x1001

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_2

    .line 1911
    :catch_6
    move-exception v6

    goto/16 :goto_2

    .line 1215
    .end local v17    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v17

    .line 1216
    .local v17, "e":Ljava/io/IOException;
    :goto_a
    :try_start_d
    const-string v6, "An exception occurred while calculating file size"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1217
    const/16 v6, 0x1002

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_2

    .line 1911
    :catch_8
    move-exception v6

    goto/16 :goto_2

    .line 1236
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .restart local v28    # "imageSizeInBytes":I
    :cond_10
    :try_start_f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    if-lez v6, :cond_11

    .line 1237
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    const v57, -0x8001

    and-int v22, v6, v57

    .line 1238
    .local v22, "error":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "An error occurred while connecting to the device:"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1239
    const/16 v6, 0x14

    const-string v57, "Connection failed (0x%02X): %s"

    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    const/16 v59, 0x1

    invoke-static/range {v22 .. v22}, Lcom/meizu/smart/wristband/ota/nodic/exception/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v60

    aput-object v60, v58, v59

    invoke-static/range {v57 .. v58}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1240
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mError:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_2

    .line 1911
    :catch_9
    move-exception v6

    goto/16 :goto_2

    .line 1243
    .end local v22    # "error":I
    :cond_11
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    if-eqz v6, :cond_12

    .line 1244
    const-string v6, "Upload aborted"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1245
    const/16 v6, 0xf

    const-string v57, "Upload aborted"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1246
    const/4 v6, -0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_12
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_2

    .line 1911
    :catch_a
    move-exception v6

    goto/16 :goto_2

    .line 1251
    :cond_12
    const/16 v16, 0x0

    .line 1254
    .local v16, "dfuService":Landroid/bluetooth/BluetoothGattService;
    :try_start_13
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->BOARD_SERVICE_UUID:Ljava/util/UUID;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v16

    .line 1256
    if-nez v16, :cond_13

    .line 1257
    const-string v6, "DFU service does not exists on the device"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1258
    const/16 v6, 0xf

    const-string v57, "Connected. DFU Service not found"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1259
    const/16 v6, 0x1006

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_14
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_2

    .line 1911
    :catch_b
    move-exception v6

    goto/16 :goto_2

    .line 1262
    :cond_13
    :try_start_15
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->BOARD_STATE_UUID:Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v12

    .line 1263
    .local v12, "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->BOARD_SEND_UUID:Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v8

    .line 1264
    .local v8, "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v12, :cond_14

    if-nez v8, :cond_15

    .line 1265
    :cond_14
    const-string v6, "DFU characteristics not found in the DFU service"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1266
    const/16 v6, 0xf

    const-string v57, "Connected. DFU Characteristics not found"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1267
    const/16 v6, 0x1007

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_16
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_2

    .line 1911
    :catch_c
    move-exception v6

    goto/16 :goto_2

    .line 1288
    :cond_15
    :try_start_17
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->DFU_VERSION:Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v55

    .line 1290
    .local v55, "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v6, 0x5

    const-string v57, "Connected. Services discovered"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1292
    const/4 v6, -0x2

    :try_start_18
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V

    .line 1295
    const/16 v54, 0x0

    .line 1296
    .local v54, "version":I
    if-eqz v55, :cond_16

    .line 1297
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v7, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->readVersion(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I

    move-result v54

    .line 1298
    and-int/lit8 v38, v54, 0xf

    .line 1299
    .local v38, "minor":I
    shr-int/lit8 v35, v54, 0x8

    .line 1300
    .local v35, "major":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Version number read: "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, "."

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1301
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Version number read: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "."

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1310
    .end local v35    # "major":I
    .end local v38    # "minor":I
    :cond_16
    const/4 v6, 0x1

    move/from16 v0, v54

    if-eq v0, v6, :cond_17

    if-nez v54, :cond_1d

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v57, 0x3

    move/from16 v0, v57

    if-le v6, v0, :cond_1d

    .line 1312
    :cond_17
    const-string v6, "Application with buttonless update found"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1313
    const/16 v6, 0xf

    const-string v57, "Application with buttonless update found"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1317
    const/16 v27, 0x0

    .line 1318
    .local v27, "hasServiceChanged":Z
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v57, 0xc

    move/from16 v0, v57

    if-ne v6, v0, :cond_1a

    .line 1322
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v26

    .line 1324
    .local v26, "genericAttributeService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v26, :cond_1a

    .line 1325
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v47

    .line 1326
    .local v47, "serviceChangedCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v47, :cond_1a

    .line 1328
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v7, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->isServiceChangedCCCDEnabled(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v48

    .line 1330
    .local v48, "serviceChangedIndicationsEnabled":Z
    if-nez v48, :cond_18

    .line 1331
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v7, v1, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1332
    const/16 v6, 0xa

    const-string v57, "Service Changed indications enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1357
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    .line 1358
    .local v34, "keepBond":Z
    if-eqz v34, :cond_19

    and-int/lit8 v6, v24, 0x1

    if-nez v6, :cond_19

    .line 1359
    const/4 v6, 0x1

    const-string v57, "Restarting service..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1361
    const/4 v6, -0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V

    .line 1362
    const/4 v6, 0x1

    const-string v57, "Disconnecting..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1363
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->waitUntilDisconnected()V

    .line 1365
    const/4 v6, 0x5

    const-string v57, "Disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1368
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1370
    const-string v6, "Restarting service"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1371
    new-instance v40, Landroid/content/Intent;

    invoke-direct/range {v40 .. v40}, Landroid/content/Intent;-><init>()V

    .line 1372
    .local v40, "newIntent":Landroid/content/Intent;
    const/16 v6, 0x18

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1373
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_18
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_18 .. :try_end_18} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_18 .. :try_end_18} :catch_17
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_19
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    goto/16 :goto_2

    .line 1911
    :catch_d
    move-exception v6

    goto/16 :goto_2

    .line 1377
    .end local v34    # "keepBond":Z
    .end local v40    # "newIntent":Landroid/content/Intent;
    :cond_18
    const/16 v6, 0xa

    :try_start_1a
    const-string v57, "Service Changed indications enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1379
    :cond_19
    const/16 v27, 0x1

    .line 1384
    .end local v26    # "genericAttributeService":Landroid/bluetooth/BluetoothGattService;
    .end local v47    # "serviceChangedCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v48    # "serviceChangedIndicationsEnabled":Z
    :cond_1a
    const/4 v6, 0x1

    const-string v57, "Jumping to the DFU Bootloader..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1387
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1388
    const/16 v6, 0xa

    const-string v57, "Notifications enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1391
    const/4 v6, -0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V

    .line 1392
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_START_DFU:[B

    const/16 v57, 0x1

    const/16 v58, 0x4

    aput-byte v58, v6, v57

    .line 1393
    const-string v6, "Sending Start DFU command (Op Code = 1, Upload Mode = 4)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1394
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_START_DFU:[B

    const/16 v57, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-direct {v0, v7, v12, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    .line 1395
    const/16 v6, 0xa

    const-string v57, "Jump to bootloader sent (Op Code = 1, Upload Mode = 4)"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1398
    monitor-enter p0
    :try_end_1a
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_1a .. :try_end_1a} :catch_17
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 1400
    const-wide/16 v58, 0x3e8

    :try_start_1b
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1404
    :goto_b
    :try_start_1c
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1407
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->waitUntilDisconnected()V

    .line 1408
    const/4 v6, 0x5

    const-string v57, "Disconnected by the remote device"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1423
    if-nez v27, :cond_1c

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 1426
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1428
    const-string v6, "Starting service that will connect to the DFU bootloader"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1429
    new-instance v40, Landroid/content/Intent;

    invoke-direct/range {v40 .. v40}, Landroid/content/Intent;-><init>()V

    .line 1430
    .restart local v40    # "newIntent":Landroid/content/Intent;
    const/16 v6, 0x18

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1431
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1d
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_1d .. :try_end_1d} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_1d .. :try_end_1d} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_1d .. :try_end_1d} :catch_17
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 1908
    const/4 v6, 0x0

    :try_start_1e
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e

    goto/16 :goto_2

    .line 1911
    :catch_e
    move-exception v6

    goto/16 :goto_2

    .line 1401
    .end local v40    # "newIntent":Landroid/content/Intent;
    :catch_f
    move-exception v17

    .line 1402
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_1f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    .line 1404
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :try_start_20
    throw v6
    :try_end_20
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_20 .. :try_end_20} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_20 .. :try_end_20} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_20 .. :try_end_20} :catch_17
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 1865
    .end local v27    # "hasServiceChanged":Z
    .end local v54    # "version":I
    :catch_10
    move-exception v17

    .line 1866
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
    :try_start_21
    const-string v6, "Upload aborted"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1867
    const/16 v6, 0xf

    const-string v57, "Upload aborted"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1868
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    const/16 v57, -0x3

    move/from16 v0, v57

    if-ne v6, v0, :cond_1b

    .line 1870
    const/4 v6, 0x0

    :try_start_22
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mAborted:Z

    .line 1871
    const-string v6, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1872
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1873
    const/16 v6, 0xa

    const-string v57, "Reset request sent"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_21
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 1877
    :cond_1b
    :goto_d
    const/4 v6, -0x7

    :try_start_23
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 1908
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
    :goto_e
    const/4 v6, 0x0

    :try_start_24
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_2

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_11

    goto/16 :goto_2

    .line 1911
    :catch_11
    move-exception v6

    goto/16 :goto_2

    .line 1423
    .restart local v27    # "hasServiceChanged":Z
    .restart local v54    # "version":I
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 1436
    .end local v27    # "hasServiceChanged":Z
    :cond_1d
    const/4 v6, 0x1

    :try_start_25
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1437
    const/16 v6, 0xa

    const-string v57, "Notifications enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_25
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_25 .. :try_end_25} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_25 .. :try_end_25} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_25 .. :try_end_25} :catch_17
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 1474
    and-int/lit8 v6, v24, 0x1

    if-lez v6, :cond_20

    move/from16 v9, v28

    .line 1475
    .local v9, "softDeviceImageSize":I
    :goto_f
    and-int/lit8 v6, v24, 0x2

    if-lez v6, :cond_21

    move/from16 v10, v28

    .line 1476
    .local v10, "bootloaderImageSize":I
    :goto_10
    and-int/lit8 v6, v24, 0x4

    if-lez v6, :cond_22

    move/from16 v11, v28

    .line 1478
    .local v11, "appImageSize":I
    :goto_11
    :try_start_26
    const-string v6, "application/zip"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1479
    move-object/from16 v0, v33

    check-cast v0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;

    move-object/from16 v56, v0

    .line 1480
    .restart local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    invoke-virtual/range {v56 .. v56}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->softDeviceImageSize()I

    move-result v9

    .line 1481
    invoke-virtual/range {v56 .. v56}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->bootloaderImageSize()I

    move-result v10

    .line 1482
    invoke-virtual/range {v56 .. v56}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->applicationImageSize()I
    :try_end_26
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_26 .. :try_end_26} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_26 .. :try_end_26} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_26 .. :try_end_26} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_26 .. :try_end_26} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_26 .. :try_end_26} :catch_17
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    move-result v11

    .line 1486
    .end local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    :cond_1e
    :try_start_27
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_START_DFU:[B

    const/16 v57, 0x1

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v58, v0

    aput-byte v58, v6, v57

    .line 1489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Sending Start DFU command (Op Code = 1, Upload Mode = "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, ")"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1490
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_START_DFU:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1491
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "DFU Start sent (Op Code = 1, Upload Mode = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1493
    monitor-enter p0
    :try_end_27
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_27 .. :try_end_27} :catch_12
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_27 .. :try_end_27} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_27 .. :try_end_27} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_27 .. :try_end_27} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_27 .. :try_end_27} :catch_17
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 1495
    const-wide/16 v58, 0x3e8

    :try_start_28
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_16
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 1499
    :goto_12
    :try_start_29
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    .line 1501
    :try_start_2a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Sending image size array to DFU Packet ("

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, "b, "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, "b, "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, "b)"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    move-object/from16 v6, p0

    .line 1502
    invoke-direct/range {v6 .. v11}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V

    .line 1503
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Firmware image size sent ("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "b, "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "b, "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "b)"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1506
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->readNotificationResponse()[B

    move-result-object v45

    .line 1518
    .local v45, "response":[B
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getStatusCode([BI)I

    move-result v52

    .line 1519
    .local v52, "status":I
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Response received (Op Code = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const/16 v58, 0x1

    aget-byte v58, v45, v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " Status = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1520
    const/4 v6, 0x1

    move/from16 v0, v52

    if-eq v0, v6, :cond_28

    .line 1521
    new-instance v6, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;

    const-string v57, "Starting DFU failed"

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_2a
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_2a .. :try_end_2a} :catch_12
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_2a .. :try_end_2a} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_2a .. :try_end_2a} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_2a .. :try_end_2a} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_2a .. :try_end_2a} :catch_17
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 1522
    .end local v45    # "response":[B
    .end local v52    # "status":I
    :catch_12
    move-exception v17

    .line 1524
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    :try_start_2b
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;->getErrorNumber()I

    move-result v6

    const/16 v57, 0x3

    move/from16 v0, v57

    if-eq v6, v0, :cond_24

    .line 1525
    throw v17
    :try_end_2b
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_2b .. :try_end_2b} :catch_13
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_2b .. :try_end_2b} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_2b .. :try_end_2b} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_2b .. :try_end_2b} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_2b .. :try_end_2b} :catch_17
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    .line 1579
    :catch_13
    move-exception v18

    .line 1580
    .local v18, "e1":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    :try_start_2c
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;->getErrorNumber()I

    move-result v6

    const/16 v57, 0x3

    move/from16 v0, v57

    if-eq v6, v0, :cond_26

    .line 1581
    throw v18
    :try_end_2c
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_2c .. :try_end_2c} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_2c .. :try_end_2c} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_2c .. :try_end_2c} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_2c .. :try_end_2c} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_2c .. :try_end_2c} :catch_17
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    .line 1846
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    .end local v18    # "e1":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    :catch_14
    move-exception v17

    .line 1847
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;
    const/16 v22, 0x1008

    .line 1848
    .restart local v22    # "error":I
    :try_start_2d
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1849
    const/16 v6, 0x14

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1851
    const-string v6, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1852
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1853
    const/16 v6, 0xa

    const-string v57, "Reset request sent"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1854
    const/16 v6, 0x1008

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_2d
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_2d .. :try_end_2d} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_2d .. :try_end_2d} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_2d .. :try_end_2d} :catch_17
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    goto/16 :goto_e

    .line 1878
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException;
    .end local v22    # "error":I
    .end local v54    # "version":I
    :catch_15
    move-exception v17

    .line 1879
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;
    const/16 v6, 0x14

    :try_start_2e
    const-string v57, "Device has disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1881
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1882
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1883
    const/16 v6, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    goto/16 :goto_e

    .line 1906
    .end local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v8    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v12    # "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v16    # "dfuService":Landroid/bluetooth/BluetoothGattService;
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;
    .end local v28    # "imageSizeInBytes":I
    .end local v55    # "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catchall_1
    move-exception v6

    .line 1908
    :goto_13
    const/16 v57, 0x0

    :try_start_2f
    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1909
    if-eqz v33, :cond_1f

    .line 1910
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_1f

    .line 1913
    :cond_1f
    :goto_14
    throw v6

    .line 1474
    .restart local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .restart local v8    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v12    # "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v16    # "dfuService":Landroid/bluetooth/BluetoothGattService;
    .restart local v28    # "imageSizeInBytes":I
    .restart local v54    # "version":I
    .restart local v55    # "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_20
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1475
    .restart local v9    # "softDeviceImageSize":I
    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_10

    .line 1476
    .restart local v10    # "bootloaderImageSize":I
    :cond_22
    const/4 v11, 0x0

    goto/16 :goto_11

    .line 1496
    .restart local v11    # "appImageSize":I
    :catch_16
    move-exception v17

    .line 1497
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_30
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_12

    .line 1499
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    :try_start_31
    throw v6
    :try_end_31
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_31 .. :try_end_31} :catch_12
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_31 .. :try_end_31} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_31 .. :try_end_31} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_31 .. :try_end_31} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_31 .. :try_end_31} :catch_17
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 1884
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v54    # "version":I
    :catch_17
    move-exception v17

    .line 1885
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;
    :try_start_32
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;->getErrorNumber()I

    move-result v22

    .line 1887
    .restart local v22    # "error":I
    const v6, 0x8000

    and-int v6, v6, v22

    if-lez v6, :cond_38

    .line 1888
    const v6, -0x8001

    and-int v22, v22, v6

    .line 1889
    const/16 v6, 0x14

    const-string v57, "Error (0x%02X): %s"

    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    const/16 v59, 0x1

    invoke-static/range {v22 .. v22}, Lcom/meizu/smart/wristband/ota/nodic/exception/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v60

    aput-object v60, v58, v59

    invoke-static/range {v57 .. v58}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1894
    :goto_15
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1895
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mConnectionState:I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    const/16 v57, -0x3

    move/from16 v0, v57

    if-ne v6, v0, :cond_23

    .line 1897
    :try_start_33
    const-string v6, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1898
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1899
    const/16 v6, 0xa

    const-string v57, "Reset request sent"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_20
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    .line 1903
    :cond_23
    :goto_16
    :try_start_34
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;->getErrorNumber()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    goto/16 :goto_e

    .line 1529
    .end local v22    # "error":I
    .restart local v9    # "softDeviceImageSize":I
    .restart local v10    # "bootloaderImageSize":I
    .restart local v11    # "appImageSize":I
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    .restart local v54    # "version":I
    :cond_24
    and-int/lit8 v6, v24, 0x4

    if-lez v6, :cond_25

    and-int/lit8 v6, v24, 0x3

    if-lez v6, :cond_25

    .line 1531
    const/4 v6, 0x0

    :try_start_35
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1533
    const-string v6, "DFU target does not support (SD/BL)+App update"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1534
    const/16 v6, 0xf

    const-string v57, "DFU target does not support (SD/BL)+App update"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1536
    and-int/lit8 v24, v24, -0x5

    .line 1537
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mFileType:I

    .line 1538
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_START_DFU:[B

    const/16 v57, 0x1

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v58, v0

    aput-byte v58, v6, v57

    .line 1539
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartsTotal:I

    .line 1542
    move-object/from16 v0, v33

    check-cast v0, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;

    move-object/from16 v56, v0

    .line 1543
    .restart local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;->setContentType(I)I
    :try_end_35
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_35 .. :try_end_35} :catch_13
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_35 .. :try_end_35} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_35 .. :try_end_35} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_35 .. :try_end_35} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_35 .. :try_end_35} :catch_17
    .catchall {:try_start_35 .. :try_end_35} :catchall_1

    .line 1545
    const/4 v11, 0x0

    .line 1546
    :try_start_36
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->available()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeInBytes:I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_23
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_36 .. :try_end_36} :catch_13
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_36 .. :try_end_36} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_36 .. :try_end_36} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_36 .. :try_end_36} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_36 .. :try_end_36} :catch_17
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    .line 1552
    :goto_17
    const/4 v6, 0x1

    :try_start_37
    const-string v57, "Sending only SD/BL"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Resending Start DFU command (Op Code = 1, Upload Mode = "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, ")"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1554
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_START_DFU:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1555
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "DFU Start sent (Op Code = 1, Upload Mode = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1557
    monitor-enter p0
    :try_end_37
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_37 .. :try_end_37} :catch_13
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_37 .. :try_end_37} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_37 .. :try_end_37} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_37 .. :try_end_37} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_37 .. :try_end_37} :catch_17
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    .line 1559
    const-wide/16 v58, 0x3e8

    :try_start_38
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_38} :catch_18
    .catchall {:try_start_38 .. :try_end_38} :catchall_3

    .line 1563
    :goto_18
    :try_start_39
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_3

    .line 1566
    :try_start_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Sending image size array to DFU Packet: ["

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, "b, "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, "b, "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, "b]"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    move-object/from16 v6, p0

    .line 1567
    invoke-direct/range {v6 .. v11}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V

    .line 1568
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Firmware image size sent ["

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "b, "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "b, "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, "b]"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1572
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->readNotificationResponse()[B

    move-result-object v45

    .line 1573
    .restart local v45    # "response":[B
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getStatusCode([BI)I

    move-result v52

    .line 1574
    .restart local v52    # "status":I
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Response received (Op Code = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const/16 v58, 0x1

    aget-byte v58, v45, v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " Status = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1575
    const/4 v6, 0x1

    move/from16 v0, v52

    if-eq v0, v6, :cond_28

    .line 1576
    new-instance v6, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;

    const-string v57, "Starting DFU failed"

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_3a
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_3a .. :try_end_3a} :catch_13
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_3a .. :try_end_3a} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_3a .. :try_end_3a} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_3a .. :try_end_3a} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_3a .. :try_end_3a} :catch_17
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1

    .line 1560
    .end local v45    # "response":[B
    .end local v52    # "status":I
    :catch_18
    move-exception v18

    .line 1561
    .local v18, "e1":Ljava/lang/InterruptedException;
    :try_start_3b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_18

    .line 1563
    .end local v18    # "e1":Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v6

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3

    :try_start_3c
    throw v6

    .line 1578
    .end local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    :cond_25
    throw v17
    :try_end_3c
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_3c .. :try_end_3c} :catch_13
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_3c .. :try_end_3c} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_3c .. :try_end_3c} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_3c .. :try_end_3c} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_3c .. :try_end_3c} :catch_17
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1

    .line 1584
    .local v18, "e1":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    :cond_26
    const/4 v6, 0x4

    move/from16 v0, v24

    if-ne v0, v6, :cond_27

    .line 1586
    const/4 v6, 0x0

    :try_start_3d
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1589
    const-string v6, "DFU target does not support DFU v.2"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1590
    const/16 v6, 0xf

    const-string v57, "DFU target does not support DFU v.2"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1593
    const/4 v6, 0x1

    const-string v57, "Switching to DFU v.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1594
    const-string v6, "Resending Start DFU command (Op Code = 1)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1595
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_START_DFU:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1596
    const/16 v6, 0xa

    const-string v57, "DFU Start sent (Op Code = 1)"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1598
    monitor-enter p0
    :try_end_3d
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_3d .. :try_end_3d} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_3d .. :try_end_3d} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_3d .. :try_end_3d} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_3d .. :try_end_3d} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_3d .. :try_end_3d} :catch_17
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1

    .line 1600
    const-wide/16 v58, 0x3e8

    :try_start_3e
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_3e} :catch_1a
    .catchall {:try_start_3e .. :try_end_3e} :catchall_4

    .line 1604
    :goto_19
    :try_start_3f
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_4

    .line 1607
    :try_start_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Sending application image size to DFU Packet: "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, " bytes"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mImageSizeInBytes:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1609
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Firmware image size sent ("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " bytes)"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1612
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->readNotificationResponse()[B

    move-result-object v45

    .line 1613
    .restart local v45    # "response":[B
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getStatusCode([BI)I

    move-result v52

    .line 1614
    .restart local v52    # "status":I
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Response received (Op Code = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const/16 v58, 0x1

    aget-byte v58, v45, v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ", Status = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1615
    const/4 v6, 0x1

    move/from16 v0, v52

    if-eq v0, v6, :cond_28

    .line 1616
    new-instance v6, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;

    const-string v57, "Starting DFU failed"

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_40
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_40 .. :try_end_40} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_40 .. :try_end_40} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_40 .. :try_end_40} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_40 .. :try_end_40} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_40 .. :try_end_40} :catch_17
    .catchall {:try_start_40 .. :try_end_40} :catchall_1

    .line 1855
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    .end local v18    # "e1":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    .end local v45    # "response":[B
    .end local v52    # "status":I
    :catch_19
    move-exception v17

    .line 1856
    .restart local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    :try_start_41
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;->getErrorNumber()I

    move-result v6

    or-int/lit16 v0, v6, 0x2000

    move/from16 v22, v0

    .line 1857
    .restart local v22    # "error":I
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1858
    const/16 v6, 0x14

    const-string v57, "Remote DFU error: %s"

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v22 .. v22}, Lcom/meizu/smart/wristband/ota/nodic/exception/GattError;->parse(I)Ljava/lang/String;

    move-result-object v60

    aput-object v60, v58, v59

    invoke-static/range {v57 .. v58}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1860
    const-string v6, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1861
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1862
    const/16 v6, 0xa

    const-string v57, "Reset request sent"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1863
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_41
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_41 .. :try_end_41} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_41 .. :try_end_41} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_41 .. :try_end_41} :catch_17
    .catchall {:try_start_41 .. :try_end_41} :catchall_1

    goto/16 :goto_e

    .line 1601
    .end local v22    # "error":I
    .restart local v18    # "e1":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    :catch_1a
    move-exception v19

    .line 1602
    .local v19, "e11":Ljava/lang/InterruptedException;
    :try_start_42
    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_19

    .line 1604
    .end local v19    # "e11":Ljava/lang/InterruptedException;
    :catchall_4
    move-exception v6

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_4

    :try_start_43
    throw v6

    .line 1618
    :cond_27
    throw v18

    .line 1656
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    .end local v18    # "e1":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    .restart local v45    # "response":[B
    .restart local v52    # "status":I
    :cond_28
    if-eqz v31, :cond_2a

    .line 1657
    const/16 v6, 0xa

    const-string v57, "Writing Initialize DFU Parameters..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1659
    const-string v6, "Sending the Initialize DFU Parameters START (Op Code = 2, Value = 0)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1660
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_START:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    :try_end_43
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_43 .. :try_end_43} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_43 .. :try_end_43} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_43 .. :try_end_43} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_43 .. :try_end_43} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_43 .. :try_end_43} :catch_17
    .catchall {:try_start_43 .. :try_end_43} :catchall_1

    .line 1663
    const/16 v6, 0x14

    :try_start_44
    new-array v13, v6, [B

    .line 1665
    .local v13, "data":[B
    :goto_1a
    const/4 v6, 0x0

    array-length v0, v13

    move/from16 v57, v0

    move-object/from16 v0, v31

    move/from16 v1, v57

    invoke-virtual {v0, v13, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v49

    .local v49, "size":I
    const/4 v6, -0x1

    move/from16 v0, v49

    if-eq v0, v6, :cond_29

    .line 1666
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v7, v8, v13, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeInitPacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_1b
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_44 .. :try_end_44} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_44 .. :try_end_44} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_44 .. :try_end_44} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_44 .. :try_end_44} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_44 .. :try_end_44} :catch_17
    .catchall {:try_start_44 .. :try_end_44} :catchall_1

    goto :goto_1a

    .line 1668
    .end local v13    # "data":[B
    .end local v49    # "size":I
    :catch_1b
    move-exception v17

    .line 1669
    .local v17, "e":Ljava/io/IOException;
    :try_start_45
    const-string v6, "Error while reading Init packet file"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1670
    new-instance v6, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;

    const-string v57, "Error while reading Init packet file"

    const/16 v58, 0x1002

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-direct {v6, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1672
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v13    # "data":[B
    .restart local v49    # "size":I
    :cond_29
    const-string v6, "Sending the Initialize DFU Parameters COMPLETE (Op Code = 2, Value = 1)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1673
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1674
    const/16 v6, 0xa

    const-string v57, "Initialize DFU Parameters completed"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1677
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->readNotificationResponse()[B

    move-result-object v45

    .line 1678
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getStatusCode([BI)I

    move-result v52

    .line 1679
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Response received (Op Code = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const/16 v58, 0x1

    aget-byte v58, v45, v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ", Status = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1680
    const/4 v6, 0x1

    move/from16 v0, v52

    if-eq v0, v6, :cond_2b

    .line 1681
    new-instance v6, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;

    const-string v57, "Device returned error after sending init packet"

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1683
    .end local v13    # "data":[B
    .end local v49    # "size":I
    :cond_2a
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mInitPacketSent:Z

    .line 1686
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPacketsBeforeNotification:I

    move/from16 v42, v0

    .line 1687
    .local v42, "numberOfPacketsBeforeNotification":I
    if-lez v42, :cond_2c

    .line 1688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Sending the number of packets before notifications (Op Code = 8, Value = "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, ")"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1689
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->setNumberOfPackets([BI)V

    .line 1690
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1691
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Packet Receipt Notif Req (Op Code = 8) sent (Value = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1695
    :cond_2c
    const-string v6, "Sending Receive Firmware Image request (Op Code = 3)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1696
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1697
    const/16 v6, 0xa

    const-string v57, "Receive Firmware Image request sent"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1700
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mStartTime:J

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLastProgressTime:J

    .line 1701
    .local v50, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification()V
    :try_end_45
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_45 .. :try_end_45} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_45 .. :try_end_45} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_45 .. :try_end_45} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_45 .. :try_end_45} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_45 .. :try_end_45} :catch_17
    .catchall {:try_start_45 .. :try_end_45} :catchall_1

    .line 1703
    :try_start_46
    const-string v6, "Uploading firmware..."

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1704
    const/16 v6, 0xa

    const-string v57, "Uploading firmware..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1705
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v7, v8, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->uploadFirmwareImage(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/InputStream;)[B
    :try_end_46
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_46 .. :try_end_46} :catch_1c
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_46 .. :try_end_46} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_46 .. :try_end_46} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_46 .. :try_end_46} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_46 .. :try_end_46} :catch_17
    .catchall {:try_start_46 .. :try_end_46} :catchall_1

    move-result-object v45

    .line 1715
    :try_start_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1718
    .local v20, "endTime":J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getStatusCode([BI)I

    move-result v52

    .line 1719
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Response received. Op Code: "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v57, 0x0

    aget-byte v57, v45, v57

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, " Req Op Code = "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v57, 0x1

    aget-byte v57, v45, v57

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, ", Status = "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v57, 0x2

    aget-byte v57, v45, v57

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1720
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Response received (Op Code = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const/16 v58, 0x1

    aget-byte v58, v45, v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ", Status = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1721
    const/4 v6, 0x1

    move/from16 v0, v52

    if-eq v0, v6, :cond_2e

    .line 1722
    new-instance v6, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;

    const-string v57, "Device returned error after sending file"

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1706
    .end local v20    # "endTime":J
    :catch_1c
    move-exception v17

    .line 1707
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;
    const-string v6, "Disconnected while sending data"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1709
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->dfuActivity:Landroid/app/Activity;

    if-eqz v6, :cond_2d

    .line 1711
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->dfuActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 1713
    :cond_2d
    throw v17

    .line 1724
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException;
    .restart local v20    # "endTime":J
    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Transfer of "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mBytesSent:I

    move/from16 v57, v0

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, " bytes has taken "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v58, v20, v50

    move-wide/from16 v0, v58

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, " ms"

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1725
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Upload completed in "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    sub-long v58, v20, v50

    invoke-virtual/range {v57 .. v59}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " ms"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1728
    const-string v6, "Sending Validate request (Op Code = 4)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1729
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_VALIDATE:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1730
    const/16 v6, 0xa

    const-string v57, "Validate request sent"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1732
    monitor-enter p0
    :try_end_47
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_47 .. :try_end_47} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_47 .. :try_end_47} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_47 .. :try_end_47} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_47 .. :try_end_47} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_47 .. :try_end_47} :catch_17
    .catchall {:try_start_47 .. :try_end_47} :catchall_1

    .line 1734
    const-wide/16 v58, 0x3e8

    :try_start_48
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_48} :catch_1d
    .catchall {:try_start_48 .. :try_end_48} :catchall_5

    .line 1738
    :goto_1b
    :try_start_49
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_5

    .line 1741
    :try_start_4a
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->readNotificationResponse()[B

    move-result-object v45

    .line 1742
    const/4 v6, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->getStatusCode([BI)I

    move-result v52

    .line 1743
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Response received. Op Code: "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v57, 0x0

    aget-byte v57, v45, v57

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, " Req Op Code = "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v57, 0x1

    aget-byte v57, v45, v57

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v57, ", Status = "

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v57, 0x2

    aget-byte v57, v45, v57

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1744
    const/16 v6, 0xa

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Response received (Op Code = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const/16 v58, 0x1

    aget-byte v58, v45, v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ", Status = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1745
    const/4 v6, 0x1

    move/from16 v0, v52

    if-eq v0, v6, :cond_2f

    .line 1746
    new-instance v6, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;

    const-string v57, "Device returned validation error"

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_4a
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_4a .. :try_end_4a} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_4a .. :try_end_4a} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_4a .. :try_end_4a} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_4a .. :try_end_4a} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_4a .. :try_end_4a} :catch_17
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1

    .line 1735
    :catch_1d
    move-exception v18

    .line 1736
    .local v18, "e1":Ljava/lang/InterruptedException;
    :try_start_4b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1b

    .line 1738
    .end local v18    # "e1":Ljava/lang/InterruptedException;
    :catchall_5
    move-exception v6

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_5

    :try_start_4c
    throw v6

    .line 1749
    :cond_2f
    const/4 v6, -0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V

    .line 1750
    const-string v6, "Sending Activate and Reset request (Op Code = 5)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1751
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->OP_CODE_ACTIVATE_AND_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1752
    const/16 v6, 0xa

    const-string v57, "Activate and Reset request sent"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1755
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->waitUntilDisconnected()V

    .line 1756
    const/4 v6, 0x5

    const-string v57, "Disconnected by the remote device"

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1762
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    .line 1763
    .restart local v34    # "keepBond":Z
    const/4 v6, 0x5

    move/from16 v0, v54

    if-eq v0, v6, :cond_30

    if-nez v34, :cond_34

    :cond_30
    const/4 v6, 0x1

    :goto_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 1766
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1771
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v57, 0xc

    move/from16 v0, v57

    if-ne v6, v0, :cond_33

    .line 1772
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v46

    .line 1774
    .local v46, "restoreBond":Z
    if-nez v46, :cond_31

    if-eqz v34, :cond_31

    and-int/lit8 v6, v24, 0x1

    if-lez v6, :cond_32

    .line 1776
    :cond_31
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1779
    monitor-enter p0
    :try_end_4c
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_4c .. :try_end_4c} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_4c .. :try_end_4c} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_4c .. :try_end_4c} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_4c .. :try_end_4c} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_4c .. :try_end_4c} :catch_17
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1

    .line 1781
    const-wide/16 v58, 0x7d0

    :try_start_4d
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_4d} :catch_1e
    .catchall {:try_start_4d .. :try_end_4d} :catchall_6

    .line 1785
    :goto_1d
    :try_start_4e
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_6

    .line 1788
    :cond_32
    if-eqz v46, :cond_33

    and-int/lit8 v6, v24, 0x4

    if-lez v6, :cond_33

    .line 1790
    :try_start_4f
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1799
    .end local v46    # "restoreBond":Z
    :cond_33
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartCurrent:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartsTotal:I

    move/from16 v57, v0

    move/from16 v0, v57

    if-ne v6, v0, :cond_35

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    move-object/from16 v57, v0

    monitor-enter v57
    :try_end_4f
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_4f .. :try_end_4f} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_4f .. :try_end_4f} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_4f .. :try_end_4f} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_4f .. :try_end_4f} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_4f .. :try_end_4f} :catch_17
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1

    .line 1803
    :try_start_50
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mLock:Ljava/lang/Object;

    const-wide/16 v58, 0x578

    move-wide/from16 v0, v58

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_50} :catch_22
    .catchall {:try_start_50 .. :try_end_50} :catchall_7

    .line 1807
    :goto_1e
    :try_start_51
    monitor-exit v57
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_7

    .line 1808
    const/4 v6, -0x6

    :try_start_52
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->updateProgressNotification(I)V
    :try_end_52
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_52 .. :try_end_52} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_52 .. :try_end_52} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_52 .. :try_end_52} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_52 .. :try_end_52} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_52 .. :try_end_52} :catch_17
    .catchall {:try_start_52 .. :try_end_52} :catchall_1

    goto/16 :goto_e

    .line 1763
    :cond_34
    const/4 v6, 0x0

    goto :goto_1c

    .line 1785
    .restart local v46    # "restoreBond":Z
    :catchall_6
    move-exception v6

    :try_start_53
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_6

    :try_start_54
    throw v6
    :try_end_54
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_54 .. :try_end_54} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_54 .. :try_end_54} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_54 .. :try_end_54} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_54 .. :try_end_54} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_54 .. :try_end_54} :catch_17
    .catchall {:try_start_54 .. :try_end_54} :catchall_1

    .line 1807
    .end local v46    # "restoreBond":Z
    :catchall_7
    move-exception v6

    :try_start_55
    monitor-exit v57
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_7

    :try_start_56
    throw v6

    .line 1823
    :cond_35
    const/4 v6, 0x1

    const-string v57, "Scanning for the DFU Bootloader..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1824
    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerFactory;->getScanner()Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScanner;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-interface {v6, v0}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScanner;->searchFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1825
    .local v39, "newAddress":Ljava/lang/String;
    if-eqz v39, :cond_37

    .line 1826
    const/4 v6, 0x5

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "DFU Bootloader found with address "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1835
    :goto_1f
    const-string v6, "Starting service that will upload application"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1836
    new-instance v40, Landroid/content/Intent;

    invoke-direct/range {v40 .. v40}, Landroid/content/Intent;-><init>()V

    .line 1837
    .restart local v40    # "newIntent":Landroid/content/Intent;
    const/16 v6, 0x18

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1838
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    const-string v57, "application/zip"

    move-object/from16 v0, v40

    move-object/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1839
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    const/16 v57, 0x4

    move-object/from16 v0, v40

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1840
    if-eqz v39, :cond_36

    .line 1841
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1842
    :cond_36
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartCurrent:I

    move/from16 v57, v0

    add-int/lit8 v57, v57, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1843
    sget-object v6, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->EXTRA_PARTS_TOTAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->mPartsTotal:I

    move/from16 v57, v0

    move-object/from16 v0, v40

    move/from16 v1, v57

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1844
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_e

    .line 1828
    .end local v40    # "newIntent":Landroid/content/Intent;
    :cond_37
    const/4 v6, 0x5

    const-string v57, "DFU Bootloader not found. Trying the same address..."

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_56
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UnknownResponseException; {:try_start_56 .. :try_end_56} :catch_14
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException; {:try_start_56 .. :try_end_56} :catch_19
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException; {:try_start_56 .. :try_end_56} :catch_10
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DeviceDisconnectedException; {:try_start_56 .. :try_end_56} :catch_15
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException; {:try_start_56 .. :try_end_56} :catch_17
    .catchall {:try_start_56 .. :try_end_56} :catchall_1

    goto :goto_1f

    .line 1891
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v20    # "endTime":J
    .end local v34    # "keepBond":Z
    .end local v39    # "newAddress":Ljava/lang/String;
    .end local v42    # "numberOfPacketsBeforeNotification":I
    .end local v45    # "response":[B
    .end local v50    # "startTime":J
    .end local v52    # "status":I
    .end local v54    # "version":I
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;
    .restart local v22    # "error":I
    :cond_38
    move/from16 v0, v22

    and-int/lit16 v0, v0, -0x4001

    move/from16 v22, v0

    .line 1892
    const/16 v6, 0x14

    :try_start_57
    const-string v57, "Error (0x%02X): %s"

    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    const/16 v59, 0x1

    invoke-static/range {v22 .. v22}, Lcom/meizu/smart/wristband/ota/nodic/exception/GattError;->parse(I)Ljava/lang/String;

    move-result-object v60

    aput-object v60, v58, v59

    invoke-static/range {v57 .. v58}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1

    goto/16 :goto_15

    .line 1782
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;
    .end local v22    # "error":I
    .restart local v9    # "softDeviceImageSize":I
    .restart local v10    # "bootloaderImageSize":I
    .restart local v11    # "appImageSize":I
    .restart local v20    # "endTime":J
    .restart local v34    # "keepBond":Z
    .restart local v42    # "numberOfPacketsBeforeNotification":I
    .restart local v45    # "response":[B
    .restart local v46    # "restoreBond":Z
    .restart local v50    # "startTime":J
    .restart local v52    # "status":I
    .restart local v54    # "version":I
    :catch_1e
    move-exception v6

    goto/16 :goto_1d

    .line 1911
    .end local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v8    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v12    # "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v16    # "dfuService":Landroid/bluetooth/BluetoothGattService;
    .end local v20    # "endTime":J
    .end local v28    # "imageSizeInBytes":I
    .end local v34    # "keepBond":Z
    .end local v42    # "numberOfPacketsBeforeNotification":I
    .end local v45    # "response":[B
    .end local v46    # "restoreBond":Z
    .end local v50    # "startTime":J
    .end local v52    # "status":I
    .end local v54    # "version":I
    .end local v55    # "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catch_1f
    move-exception v57

    goto/16 :goto_14

    .line 1906
    .end local v31    # "initIs":Ljava/io/InputStream;
    .restart local v32    # "initIs":Ljava/io/InputStream;
    :catchall_8
    move-exception v6

    move-object/from16 v31, v32

    .end local v32    # "initIs":Ljava/io/InputStream;
    .restart local v31    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_13

    .line 1900
    .restart local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .restart local v8    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v12    # "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v16    # "dfuService":Landroid/bluetooth/BluetoothGattService;
    .restart local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;
    .restart local v22    # "error":I
    .restart local v28    # "imageSizeInBytes":I
    .restart local v55    # "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catch_20
    move-exception v6

    goto/16 :goto_16

    .line 1874
    .end local v22    # "error":I
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
    :catch_21
    move-exception v6

    goto/16 :goto_d

    .line 1804
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/UploadAbortedException;
    .restart local v9    # "softDeviceImageSize":I
    .restart local v10    # "bootloaderImageSize":I
    .restart local v11    # "appImageSize":I
    .restart local v20    # "endTime":J
    .restart local v34    # "keepBond":Z
    .restart local v42    # "numberOfPacketsBeforeNotification":I
    .restart local v45    # "response":[B
    .restart local v50    # "startTime":J
    .restart local v52    # "status":I
    .restart local v54    # "version":I
    :catch_22
    move-exception v6

    goto/16 :goto_1e

    .line 1547
    .end local v20    # "endTime":J
    .end local v34    # "keepBond":Z
    .end local v42    # "numberOfPacketsBeforeNotification":I
    .end local v45    # "response":[B
    .end local v50    # "startTime":J
    .end local v52    # "status":I
    .local v17, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    .restart local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    :catch_23
    move-exception v6

    goto/16 :goto_17

    .line 1215
    .end local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v8    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v12    # "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v16    # "dfuService":Landroid/bluetooth/BluetoothGattService;
    .end local v17    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/RemoteDfuException;
    .end local v28    # "imageSizeInBytes":I
    .end local v31    # "initIs":Ljava/io/InputStream;
    .end local v54    # "version":I
    .end local v55    # "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v56    # "zhis":Lcom/meizu/smart/wristband/ota/nodic/ArchiveInputStream;
    .restart local v32    # "initIs":Ljava/io/InputStream;
    :catch_24
    move-exception v17

    move-object/from16 v31, v32

    .end local v32    # "initIs":Ljava/io/InputStream;
    .restart local v31    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_a

    .line 1211
    .end local v31    # "initIs":Ljava/io/InputStream;
    .restart local v32    # "initIs":Ljava/io/InputStream;
    :catch_25
    move-exception v17

    move-object/from16 v31, v32

    .end local v32    # "initIs":Ljava/io/InputStream;
    .restart local v31    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_9

    .line 1207
    .end local v31    # "initIs":Ljava/io/InputStream;
    .restart local v32    # "initIs":Ljava/io/InputStream;
    :catch_26
    move-exception v17

    move-object/from16 v31, v32

    .end local v32    # "initIs":Ljava/io/InputStream;
    .restart local v31    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_8

    .end local v31    # "initIs":Ljava/io/InputStream;
    .restart local v28    # "imageSizeInBytes":I
    .restart local v32    # "initIs":Ljava/io/InputStream;
    :cond_39
    move-object/from16 v31, v32

    .end local v32    # "initIs":Ljava/io/InputStream;
    .restart local v31    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_7

    .end local v28    # "imageSizeInBytes":I
    :cond_3a
    move-object/from16 v32, v31

    .end local v31    # "initIs":Ljava/io/InputStream;
    .restart local v32    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_6
.end method
