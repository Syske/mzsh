.class Lcom/meizu/smart/wristband/servers/SmsServer$1;
.super Ljava/lang/Object;
.source "SmsServer.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/SmsServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/SmsServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/SmsServer;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/SmsServer$1;->this$0:Lcom/meizu/smart/wristband/servers/SmsServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 174
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/SmsServer$1;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    const-string v0, "TelephonyServer doOnError callerName.clear()"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer$1;->this$0:Lcom/meizu/smart/wristband/servers/SmsServer;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/SmsServer;->access$000(Lcom/meizu/smart/wristband/servers/SmsServer;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 179
    return-void
.end method
