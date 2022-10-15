.class public Lcom/meizu/smart/wristband/bluetooth/BleTunnel;
.super Ljava/lang/Object;
.source "BleTunnel.java"


# instance fields
.field characteristic:Ljava/util/UUID;

.field characteristicRead:Ljava/util/UUID;

.field service:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0
    .param p1, "service"    # Ljava/util/UUID;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "characteristicRead"    # Ljava/util/UUID;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->service:Ljava/util/UUID;

    .line 18
    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->characteristic:Ljava/util/UUID;

    .line 19
    iput-object p3, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->characteristicRead:Ljava/util/UUID;

    .line 20
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;[B)Lrx/Observable;
    .locals 3
    .param p1, "describe"    # Ljava/lang/String;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->service:Ljava/util/UUID;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->characteristic:Ljava/util/UUID;

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->characteristicRead:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public write_only(Ljava/lang/String;[B)Lrx/Observable;
    .locals 6
    .param p1, "describe"    # Ljava/lang/String;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->service:Ljava/util/UUID;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->characteristic:Ljava/util/UUID;

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleTunnel;->characteristicRead:Ljava/util/UUID;

    const v5, 0x7fffffff

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
