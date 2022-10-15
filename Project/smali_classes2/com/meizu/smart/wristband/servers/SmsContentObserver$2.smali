.class Lcom/meizu/smart/wristband/servers/SmsContentObserver$2;
.super Ljava/lang/Object;
.source "SmsContentObserver.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/SmsContentObserver;->handleMessage(Landroid/os/Message;)Z
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
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/SmsContentObserver;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/SmsContentObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/SmsContentObserver;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver$2;->this$0:Lcom/meizu/smart/wristband/servers/SmsContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 257
    const-string v0, "TelephonyServer doOnNext callerName.clear()"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver$2;->this$0:Lcom/meizu/smart/wristband/servers/SmsContentObserver;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->access$000(Lcom/meizu/smart/wristband/servers/SmsContentObserver;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 259
    return-void
.end method
