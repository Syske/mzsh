.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$3;
.super Ljava/lang/Object;
.source "BleTools.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1",
        "<[B",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$3;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([B)Ljava/lang/Boolean;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 345
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$3;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->monitorData:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->isFull()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$3;->call([B)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
