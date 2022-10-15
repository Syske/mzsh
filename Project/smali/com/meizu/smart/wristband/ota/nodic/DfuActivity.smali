.class public Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;
.super Landroid/app/Activity;
.source "DfuActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_START_SERVICE:Ljava/lang/String; = "action_start_service"

.field private static final CURRENT_SAMPLES_VERSION:I = 0x3

.field private static final DATA_DEVICE:Ljava/lang/String; = "device"

.field private static final DATA_FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final DATA_FILE_STREAM:Ljava/lang/String; = "file_stream"

.field private static final DATA_FILE_TYPE:Ljava/lang/String; = "file_type"

.field private static final DATA_FILE_TYPE_TMP:Ljava/lang/String; = "file_type_tmp"

.field private static final DATA_INIT_FILE_PATH:Ljava/lang/String; = "init_file_path"

.field private static final DATA_INIT_FILE_STREAM:Ljava/lang/String; = "init_file_stream"

.field private static final DATA_STATUS:Ljava/lang/String; = "status"

.field private static final ENABLE_BT_REQ:I = 0x0

.field private static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final PREFS_DEVICE_NAME:Ljava/lang/String; = "no.nordicsemi.android.nrftoolbox.dfu.PREFS_DEVICE_NAME"

.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "no.nordicsemi.android.nrftoolbox.dfu.PREFS_FILE_NAME"

.field private static final PREFS_FILE_SIZE:Ljava/lang/String; = "no.nordicsemi.android.nrftoolbox.dfu.PREFS_FILE_SIZE"

.field private static final PREFS_FILE_TYPE:Ljava/lang/String; = "no.nordicsemi.android.nrftoolbox.dfu.PREFS_FILE_TYPE"

.field private static final PREFS_SAMPLES_VERSION:Ljava/lang/String; = "no.nordicsemi.android.nrftoolbox.dfu.PREFS_SAMPLES_VERSION"

.field private static final SELECT_INIT_FILE_REQ:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DfuActivity"

.field public static dfuActivity:Landroid/app/Activity;


# instance fields
.field adapter:Landroid/bluetooth/BluetoothAdapter;

.field private drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

.field private forceMode:Ljava/lang/Boolean;

.field private isUpgradeError:Z

.field private layoutProgress:Landroid/widget/LinearLayout;

.field private final mDfuUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mDlgDismisHandler:Landroid/os/Handler;

.field private mFileNameView:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileSizeView:Ljava/lang/String;

.field private mFileStreamUri:Landroid/net/Uri;

.field private mFileType:I

.field private mFileTypeTmp:I

.field private mFileTypeView:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitFilePath:Ljava/lang/String;

.field private mInitFileStreamUri:Landroid/net/Uri;

.field private mMacAddress:Ljava/lang/String;

.field private mMacAddressOld:Ljava/lang/String;

.field private mMacname:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStatusOk:Z

.field private otaGif:Lcom/meizu/smart/wristband/meizuUI/widget/GifView;

.field private progress_number:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field public update_state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->dfuActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->isUpgradeError:Z

    .line 130
    iput v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->update_state:I

    .line 132
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$1;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mDfuUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$6;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$6;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mDlgDismisHandler:Landroid/os/Handler;

    .line 641
    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mHandler:Landroid/os/Handler;

    .line 642
    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;IIIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->updateProgressBar(IIIZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mDlgDismisHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->goUpgradeService()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->forceMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->onTransferCompleted()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->layoutProgress:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->lambda$onCreate$386(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 647
    :cond_0
    const/4 v4, 0x0

    .line 657
    :goto_0
    return-object v4

    .line 649
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 650
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 651
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 653
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 657
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static checkModel([B)I
    .locals 7
    .param p0, "scanRecord"    # [B

    .prologue
    .line 676
    const-string v0, "0703"

    .line 677
    .local v0, "checkString":Ljava/lang/String;
    array-length v1, p0

    .line 678
    .local v1, "len":I
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    .line 679
    .local v3, "scanHex":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 680
    .local v4, "start":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 681
    add-int/lit8 v5, v4, -0x2

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 685
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearUI()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 621
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileNameView:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileTypeView:Ljava/lang/String;

    .line 623
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileSizeView:Ljava/lang/String;

    .line 624
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileStreamUri:Landroid/net/Uri;

    .line 626
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mInitFilePath:Ljava/lang/String;

    .line 627
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mInitFileStreamUri:Landroid/net/Uri;

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mStatusOk:Z

    .line 629
    return-void
.end method

.method private ensureSamplesExist()V
    .locals 5

    .prologue
    .line 370
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->updateFileInfo(Ljava/lang/String;JI)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----------FilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method private goUpgradeService()V
    .locals 6

    .prologue
    .line 311
    .line 312
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 313
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "no.nordicsemi.android.nrftoolbox.dfu.PREFS_DEVICE_NAME"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacname:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string v4, "no.nordicsemi.android.nrftoolbox.dfu.PREFS_FILE_NAME"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileNameView:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string v4, "no.nordicsemi.android.nrftoolbox.dfu.PREFS_FILE_TYPE"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileTypeView:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    const-string v4, "no.nordicsemi.android.nrftoolbox.dfu.PREFS_FILE_SIZE"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileSizeView:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "keepBond":Z
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v3, "service":Landroid/content/Intent;
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    iget v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    if-nez v4, :cond_0

    const-string v4, "application/zip"

    :goto_0
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileStreamUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mInitFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mInitFileStreamUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDfuService:address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-----deviceName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "------mFileType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "------mFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-----mFileStreamUri"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 337
    const/4 v4, 0x1

    iput v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->update_state:I

    .line 338
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->startS(Landroid/content/Intent;)V

    .line 340
    return-void

    .line 325
    :cond_0
    const-string v4, "application/octet-stream"

    goto :goto_0
.end method

.method private isBLEEnabled()Z
    .locals 2

    .prologue
    .line 295
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 296
    .local v0, "manager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 297
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isBLESupported()Z
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private synthetic lambda$onCreate$386(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 7
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    const-wide/32 v2, 0x88b8

    const/4 v6, 0x1

    move-object v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private onTransferCompleted()V
    .locals 1

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->clearUI()V

    .line 601
    const v0, 0x7f0802c6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->showToast(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private setGUI()V
    .locals 1

    .prologue
    .line 343
    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 344
    return-void
.end method

.method private showBLEDialog()V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "enableIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    return-void
.end method

.method private showErrorMessage()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->clearUI()V

    .line 595
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->finish()V

    .line 596
    return-void
.end method

.method private showErrorMessage(IZ)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "connectionError"    # Z

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->clearUI()V

    .line 611
    if-eqz p2, :cond_0

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/ota/nodic/exception/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->showToast(Ljava/lang/String;)V

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/ota/nodic/exception/GattError;->parse(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 633
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 637
    return-void
.end method

.method private startS(Landroid/content/Intent;)V
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 480
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->update_state:I

    .line 481
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "\u6355\u83b7DeadObjectException"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->update_state:I

    .line 485
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->finish()V

    goto :goto_0
.end method

.method private updateFileInfo(Ljava/lang/String;JI)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "fileType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const v2, 0x7f0c0006

    .line 447
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileNameView:Ljava/lang/String;

    .line 448
    packed-switch p4, :pswitch_data_0

    .line 466
    :goto_0
    :pswitch_0
    const v1, 0x7f0800ee

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileSizeView:Ljava/lang/String;

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "extension":Ljava/lang/String;
    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    if-nez v1, :cond_0

    const-string v0, "(?i)ZIP"

    .line 470
    :goto_1
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mStatusOk:Z

    .line 471
    return-void

    .line 450
    .end local v0    # "extension":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileTypeView:Ljava/lang/String;

    goto :goto_0

    .line 454
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileTypeView:Ljava/lang/String;

    goto :goto_0

    .line 458
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileTypeView:Ljava/lang/String;

    goto :goto_0

    .line 462
    :pswitch_4
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileTypeView:Ljava/lang/String;

    goto :goto_0

    .line 468
    .restart local v0    # "extension":Ljava/lang/String;
    :cond_0
    const-string v0, "(?i)HEX|BIN"

    goto :goto_1

    .line 448
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateProgressBar(IIIZZ)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "part"    # I
    .param p3, "total"    # I
    .param p4, "error"    # Z
    .param p5, "connectionError"    # Z

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v1, 0x1

    .line 527
    packed-switch p1, :pswitch_data_0

    .line 580
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5347\u7ea7\u5931\u8d25\u63d0\u793a isError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 582
    if-eqz p4, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->showErrorMessage()V

    .line 590
    :goto_0
    return-void

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 533
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 536
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 539
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 542
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 547
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$8;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$8;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 566
    :pswitch_6
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$9;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$9;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 586
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->progress_number:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    nop

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


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$7;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$7;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 512
    return-void
.end method

.method protected getTargetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 662
    const-string v0, "0703"

    .line 663
    .local v0, "checkString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 664
    .local v3, "str1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 665
    .local v1, "start":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 666
    add-int/lit8 v4, v1, 0x4

    add-int/lit8 v5, v1, 0x10

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 668
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    .line 669
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xb

    .line 670
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mStatusOk:Z

    if-nez v0, :cond_0

    .line 492
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 494
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x80

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    sput-object p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->dfuActivity:Landroid/app/Activity;

    .line 181
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 183
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->setContentView(I)V

    .line 184
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->progress_number:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 185
    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 186
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->otaGif:Lcom/meizu/smart/wristband/meizuUI/widget/GifView;

    .line 187
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->otaGif:Lcom/meizu/smart/wristband/meizuUI/widget/GifView;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->setMovieResource(I)V

    .line 189
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->layoutProgress:Landroid/widget/LinearLayout;

    .line 190
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    .line 192
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->drHootView:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$2;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->setOnDrawCompleteListenter(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;)V

    .line 202
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->progress_number:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->setGUI()V

    .line 204
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->forceMode:Ljava/lang/Boolean;

    .line 205
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacname:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_mac"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacAddress:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    .line 209
    iput v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    .line 211
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->isBLESupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->finish()V

    .line 282
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->isBLEEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->showBLEDialog()V

    .line 220
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mHandler:Landroid/os/Handler;

    .line 221
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->ensureSamplesExist()V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMacname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMacAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filepath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 225
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 226
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$5;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    .line 228
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$4;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    .line 236
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v4}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v0

    .line 256
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$3;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    .line 257
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 380
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 390
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x0

    .line 408
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 413
    const-string v4, "_display_name"

    .line 414
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 413
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "fileName":Ljava/lang/String;
    const-string v4, "_size"

    .line 419
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 418
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 420
    .local v3, "fileSize":I
    const/4 v2, 0x0

    .line 421
    .local v2, "filePath":Ljava/lang/String;
    const-string v4, "_data"

    .line 422
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, "dataIndex":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 424
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 425
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 426
    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    .line 428
    :cond_1
    int-to-long v4, v3

    iget v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileType:I

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->updateFileInfo(Ljava/lang/String;JI)V

    .line 437
    .end local v0    # "dataIndex":I
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "fileSize":I
    :goto_0
    return-void

    .line 430
    :cond_2
    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileNameView:Ljava/lang/String;

    .line 431
    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileTypeView:Ljava/lang/String;

    .line 432
    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileSizeView:Ljava/lang/String;

    .line 433
    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    .line 434
    iput-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileStreamUri:Landroid/net/Uri;

    .line 435
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mStatusOk:Z

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileNameView:Ljava/lang/String;

    .line 399
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileTypeView:Ljava/lang/String;

    .line 400
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileSizeView:Ljava/lang/String;

    .line 401
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFilePath:Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mFileStreamUri:Landroid/net/Uri;

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mStatusOk:Z

    .line 404
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 352
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 353
    .local v0, "broadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v2, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v2, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->mDfuUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 358
    return-void
.end method

.method public onUploadCanceled()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->clearUI()V

    .line 606
    const v0, 0x7f0802e7

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->showToast(I)V

    .line 607
    return-void
.end method
