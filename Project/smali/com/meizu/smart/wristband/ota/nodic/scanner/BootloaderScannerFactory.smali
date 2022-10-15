.class public Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerFactory;
.super Ljava/lang/Object;
.source "BootloaderScannerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScanner()Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScanner;
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerLollipop;-><init>()V

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;-><init>()V

    goto :goto_0
.end method
