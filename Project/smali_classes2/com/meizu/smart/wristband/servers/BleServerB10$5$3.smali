.class Lcom/meizu/smart/wristband/servers/BleServerB10$5$3;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10$5;->call(Lrx/Subscriber;)V
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
        "Ljava/lang/Boolean;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$3;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$3;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$3;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB10$5;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/smart/wristband/servers/BleServerB10;->otaOrLogout:Z

    .line 169
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->enableStepReport(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
