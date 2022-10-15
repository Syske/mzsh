.class public abstract Lcom/litesuits/bluetooth/scan/PeriodScanCallback;
.super Ljava/lang/Object;
.source "PeriodScanCallback.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

.field protected timeoutMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->handler:Landroid/os/Handler;

    .line 18
    iput-wide p1, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->timeoutMillis:J

    .line 19
    return-void
.end method


# virtual methods
.method public getLiteBluetooth()Lcom/litesuits/bluetooth/LiteBluetooth;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    return-object v0
.end method

.method public getTimeoutMillis()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->timeoutMillis:J

    return-wide v0
.end method

.method public notifyScanStarted()V
    .locals 4

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->timeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->removeHandlerMsg()V

    .line 26
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/litesuits/bluetooth/scan/PeriodScanCallback$1;

    invoke-direct {v1, p0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback$1;-><init>(Lcom/litesuits/bluetooth/scan/PeriodScanCallback;)V

    iget-wide v2, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->timeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    :cond_0
    return-void
.end method

.method public abstract onScanTimeout()V
.end method

.method public removeHandlerMsg()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public setLiteBluetooth(Lcom/litesuits/bluetooth/LiteBluetooth;)Lcom/litesuits/bluetooth/scan/PeriodScanCallback;
    .locals 0
    .param p1, "liteBluetooth"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    .line 55
    return-object p0
.end method

.method public setTimeoutMillis(J)Lcom/litesuits/bluetooth/scan/PeriodScanCallback;
    .locals 1
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->timeoutMillis:J

    .line 46
    return-object p0
.end method
