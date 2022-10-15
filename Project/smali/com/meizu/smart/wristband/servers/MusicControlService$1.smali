.class Lcom/meizu/smart/wristband/servers/MusicControlService$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/servers/MusicControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/MusicControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/MusicControlService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "mAction":Ljava/lang/String;
    sget-object v4, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PLAY:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    iget-object v3, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v3}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$000(Lcom/meizu/smart/wristband/servers/MusicControlService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/servers/MusicControlService;->sendMusicKeyEvent(I)Z

    .line 48
    iget-object v3, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v3, v2}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$002(Lcom/meizu/smart/wristband/servers/MusicControlService;Z)Z

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v4, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PAUSE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$000(Lcom/meizu/smart/wristband/servers/MusicControlService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    const/16 v4, 0x7f

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/servers/MusicControlService;->sendMusicKeyEvent(I)Z

    .line 53
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$002(Lcom/meizu/smart/wristband/servers/MusicControlService;Z)Z

    goto :goto_0

    .line 55
    :cond_2
    sget-object v4, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_NEXT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/servers/MusicControlService;->sendMusicKeyEvent(I)Z

    goto :goto_0

    .line 57
    :cond_3
    sget-object v4, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_PREVIOUS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/servers/MusicControlService;->sendMusicKeyEvent(I)Z

    goto :goto_0

    .line 59
    :cond_4
    sget-object v4, Lcom/meizu/smart/wristband/servers/MusicControlService;->DESAY_ACTION_MUSIC_IS_PLAYING:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    const-string v4, "playing"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    .local v0, "Playing":Z
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$000(Lcom/meizu/smart/wristband/servers/MusicControlService;)Z

    move-result v4

    if-eq v4, v0, :cond_0

    .line 62
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v4, v0}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$002(Lcom/meizu/smart/wristband/servers/MusicControlService;Z)Z

    .line 63
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$100(Lcom/meizu/smart/wristband/servers/MusicControlService;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v4

    if-nez v4, :cond_5

    .line 64
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$200(Lcom/meizu/smart/wristband/servers/MusicControlService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$102(Lcom/meizu/smart/wristband/servers/MusicControlService;Lcom/meizu/smart/wristband/servers/BleServer;)Lcom/meizu/smart/wristband/servers/BleServer;

    .line 66
    :cond_5
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$200(Lcom/meizu/smart/wristband/servers/MusicControlService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$000(Lcom/meizu/smart/wristband/servers/MusicControlService;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_1
    invoke-virtual {v4, v2}, Lcom/meizu/smart/wristband/servers/BleServer;->synMusicFlag(I)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 67
    const-string/jumbo v2, "wxf_music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBleServer ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$100(Lcom/meizu/smart/wristband/servers/MusicControlService;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",boo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/MusicControlService$1;->this$0:Lcom/meizu/smart/wristband/servers/MusicControlService;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/MusicControlService;->access$000(Lcom/meizu/smart/wristband/servers/MusicControlService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 66
    goto :goto_1
.end method
