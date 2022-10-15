.class Lcom/meizu/smart/wristband/servers/SoundPoolServer$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundPoolServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/servers/SoundPoolServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/SoundPoolServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/SoundPoolServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer$1;->this$0:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "action":Ljava/lang/String;
    sget-object v0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->ACTION:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer$1;->this$0:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    invoke-static {v0, v4}, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->access$002(Lcom/meizu/smart/wristband/servers/SoundPoolServer;Z)Z

    .line 61
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer$1;->this$0:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->access$200(Lcom/meizu/smart/wristband/servers/SoundPoolServer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/SoundPoolServer$1;->this$0:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->access$100(Lcom/meizu/smart/wristband/servers/SoundPoolServer;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 63
    :cond_0
    return-void
.end method
