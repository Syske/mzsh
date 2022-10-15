.class Lcom/meizu/smart/wristband/servers/BleServerB52$1$6;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52$1;->call(Lrx/Subscriber;)V
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
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$6;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$6;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 3
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$6;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getStepOfDay(Landroid/content/Context;Ljava/util/Date;)I

    move-result v0

    .line 174
    .local v0, "step":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$6;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-boolean v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB52;->otaOrLogout:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$6;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->savePace(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setStep(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    .line 179
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setStep(Ljava/lang/Integer;)Lrx/Observable;

    .line 181
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method
