.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$2;
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
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
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
    .line 347
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$2;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([B)Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 350
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$2;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->monitorData:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$2;->call([B)Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    move-result-object v0

    return-object v0
.end method
