.class final Lcom/meizu/smart/wristband/bluetooth/BleApi$2;
.super Ljava/lang/Object;
.source "BleApi.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic val$buffer:[B

.field final synthetic val$characteristicUuid:Ljava/util/UUID;

.field final synthetic val$characteristicUuidRead:Ljava/util/UUID;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$descriptorUUID:Ljava/util/UUID;

.field final synthetic val$serverUuid:Ljava/util/UUID;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Ljava/lang/String;[BLjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;I)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$content:Ljava/lang/String;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$buffer:[B

    iput-object p3, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$serverUuid:Ljava/util/UUID;

    iput-object p4, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$characteristicUuid:Ljava/util/UUID;

    iput-object p5, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$characteristicUuidRead:Ljava/util/UUID;

    iput-object p6, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$descriptorUUID:Ljava/util/UUID;

    iput p7, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-[B>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-[B>;"
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;-><init>()V

    .line 27
    .local v0, "cmd":Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;
    sget v1, Lcom/meizu/smart/wristband/bluetooth/BleApi;->s_auto_cmdid:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/meizu/smart/wristband/bluetooth/BleApi;->s_auto_cmdid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->id:Ljava/lang/Integer;

    .line 28
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$content:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->content:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$buffer:[B

    iput-object v1, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->buffer:[B

    .line 30
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$serverUuid:Ljava/util/UUID;

    iput-object v1, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->serverUUID:Ljava/util/UUID;

    .line 31
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$characteristicUuid:Ljava/util/UUID;

    iput-object v1, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->charWriteUUID:Ljava/util/UUID;

    .line 32
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$characteristicUuidRead:Ljava/util/UUID;

    iput-object v1, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->charReadUUID:Ljava/util/UUID;

    .line 33
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$descriptorUUID:Ljava/util/UUID;

    iput-object v1, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->descriptorUUID:Ljava/util/UUID;

    .line 34
    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleApi$2;Lrx/Subscriber;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V

    iput-object v1, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    .line 61
    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->addBleCmd(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V

    .line 62
    return-void
.end method
