.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->lambda$call$87(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$call$87(Ljava/lang/Long;)V
    .locals 4
    .param p1, "a"    # Ljava/lang/Long;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->play(Landroid/content/Context;)V

    .line 168
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/meizu/smart/wristband/servers/VibratorUtil;->Vibrate(Landroid/content/Context;J)V

    .line 169
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->call(Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Landroid/content/Intent;)Ljava/lang/Void;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcast_notify_message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const-string v2, "broadcast_notify_message_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "message":Ljava/lang/String;
    const-string v2, "NT+BEEP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-wide/16 v2, 0x708

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lrx/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v2

    const/4 v3, 0x4

    .line 165
    invoke-virtual {v2, v3}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;)Lrx/functions/Action1;

    move-result-object v3

    .line 166
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 209
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcast_connect_manutal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    const-string v2, "broadcast_notify_connect_state_data"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 173
    .local v1, "state":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->diableOtaConnet()Z

    .line 175
    if-ne v1, v4, :cond_2

    .line 176
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2, v4}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$102(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Z)Z

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->refreshManual()V

    goto :goto_0

    .line 179
    .end local v1    # "state":I
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_AIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_UNIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action_tip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2, v4}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$302(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Z)Z

    .line 185
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2, v4}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$102(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Z)Z

    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action_UNBUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 188
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->MoveToFirst()V

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcast_notify_connect_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "broadcast_notify_connect_state_data"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 192
    .restart local v1    # "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0\u4e3a\u65ad\u5f00 \u63a5\u5230\u5e7f\u64adbroadcast_notify_connect_state  state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 193
    if-nez v1, :cond_6

    .line 194
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    goto/16 :goto_0

    .line 196
    :cond_6
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iget-boolean v2, v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    goto/16 :goto_0
.end method
