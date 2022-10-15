.class final Lcom/meizu/smart/wristband/models/bluetooth/BleTools$4;
.super Ljava/lang/Object;
.source "BleTools.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->requestData(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V
    .locals 0
    .param p1, "monitorData"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .prologue
    .line 380
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->deleteCurrent()V

    .line 381
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 377
    check-cast p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$4;->call(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V

    return-void
.end method
