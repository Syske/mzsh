.class Lcom/meizu/smart/wristband/servers/BleServerB52$1$4;
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
    .line 189
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$4;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$4;->lambda$call$475(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$call$475(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$4;->call(Ljava/lang/Boolean;)Lrx/Observable;

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
    .line 192
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$4;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 193
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B521A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B522A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R23"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Meizu H1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B502A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->resetRAES()Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$4$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method
