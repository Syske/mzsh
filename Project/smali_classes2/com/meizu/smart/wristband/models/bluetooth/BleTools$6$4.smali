.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$4;
.super Ljava/lang/Object;
.source "BleTools.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$4;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 337
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$4;->call([B)V

    return-void
.end method

.method public call([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 340
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$4;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->monitorData:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->addData([B)V

    .line 341
    return-void
.end method
