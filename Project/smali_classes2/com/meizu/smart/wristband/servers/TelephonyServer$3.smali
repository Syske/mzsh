.class Lcom/meizu/smart/wristband/servers/TelephonyServer$3;
.super Ljava/lang/Object;
.source "TelephonyServer.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/TelephonyServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/TelephonyServer;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer$3;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 243
    const-string v0, "TelephonyServer doOnNext callerName.clear()"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer$3;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$400(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 245
    return-void
.end method
