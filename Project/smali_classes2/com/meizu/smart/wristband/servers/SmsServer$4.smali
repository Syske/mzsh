.class Lcom/meizu/smart/wristband/servers/SmsServer$4;
.super Ljava/lang/Object;
.source "SmsServer.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/SmsServer;->handleMessage(Landroid/os/Message;)Z
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
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/SmsServer;

.field final synthetic val$server:Lcom/meizu/smart/wristband/servers/BleServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/SmsServer;Lcom/meizu/smart/wristband/servers/BleServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/SmsServer;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/SmsServer$4;->this$0:Lcom/meizu/smart/wristband/servers/SmsServer;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/SmsServer$4;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/SmsServer$4;->call([B)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call([B)Lrx/Observable;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer$4;->val$server:Lcom/meizu/smart/wristband/servers/BleServer;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsgRequest(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 154
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/SmsServer$4$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/SmsServer$4$1;-><init>(Lcom/meizu/smart/wristband/servers/SmsServer$4;[B)V

    .line 155
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
