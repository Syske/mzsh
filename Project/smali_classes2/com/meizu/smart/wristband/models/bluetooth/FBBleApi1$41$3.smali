.class Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$3;
.super Ljava/lang/Object;
.source "FBBleApi1.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$3;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$3;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V
    .locals 2
    .param p1, "monitorData"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$3;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

    iget-wide v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->time_dev:J

    iput-wide v0, p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->time_dev:J

    .line 555
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$3;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 551
    check-cast p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$3;->call(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V

    return-void
.end method
