.class Lcom/meizu/smart/wristband/servers/TelephonyServer$4;
.super Ljava/lang/Object;
.source "TelephonyServer.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/TelephonyServer;->handleMessage(Landroid/os/Message;)Z
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
        "Ljava/lang/Object;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

.field final synthetic val$server:Lcom/meizu/smart/wristband/servers/BleServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/TelephonyServer;Lcom/meizu/smart/wristband/servers/BleServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/TelephonyServer;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer$4;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer$4;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/TelephonyServer$4;->call(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lrx/Observable;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "TelephonyServer callerName.clear()"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer$4;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    const-string v1, "1"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "0"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
