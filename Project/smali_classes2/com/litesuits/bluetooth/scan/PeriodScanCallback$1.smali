.class Lcom/litesuits/bluetooth/scan/PeriodScanCallback$1;
.super Ljava/lang/Object;
.source "PeriodScanCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->notifyScanStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;


# direct methods
.method constructor <init>(Lcom/litesuits/bluetooth/scan/PeriodScanCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback$1;->this$0:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback$1;->this$0:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    iget-object v0, v0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    iget-object v1, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback$1;->this$0:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->stopScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 30
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback$1;->this$0:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->onScanTimeout()V

    .line 31
    return-void
.end method
