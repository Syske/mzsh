.class Lcom/meizu/smart/wristband/StartActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/StartActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/StartActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/meizu/smart/wristband/StartActivity$1;->this$0:Lcom/meizu/smart/wristband/StartActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_1
    return-void

    .line 100
    :sswitch_0
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :pswitch_0
    const-string/jumbo v0, "\u5207\u6362\u8bed\u8a00\uff0c\u5f7b\u5e95\u9000\u51faAPP"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/meizu/smart/wristband/Exit;->getInstance()Lcom/meizu/smart/wristband/Exit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/Exit;->exit()V

    goto :goto_1

    .line 106
    :pswitch_1
    const-string/jumbo v0, "\u5207\u6362\u65f6\u533a\uff0c\u5f7b\u5e95\u9000\u51faAPP"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/meizu/smart/wristband/Exit;->getInstance()Lcom/meizu/smart/wristband/Exit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/Exit;->exit()V

    goto :goto_1

    .line 100
    :sswitch_data_0
    .sparse-switch
        -0x122164c -> :sswitch_0
        0x1df32313 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
