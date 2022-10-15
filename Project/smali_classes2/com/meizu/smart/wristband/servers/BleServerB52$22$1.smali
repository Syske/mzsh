.class Lcom/meizu/smart/wristband/servers/BleServerB52$22$1;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52$22;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$22;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/servers/BleServerB52$22;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$22$1;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 469
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$22$1;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "alarm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setAlarmClock1(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
