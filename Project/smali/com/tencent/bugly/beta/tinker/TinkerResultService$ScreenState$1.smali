.class Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$1;
.super Landroid/content/BroadcastReceiver;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;-><init>(Landroid/content/Context;Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;

.field final synthetic val$onScreenOffInterface:Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$1;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;

    iput-object p2, p0, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$1;->val$onScreenOffInterface:Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    .line 108
    if-nez p2, :cond_1

    const-string v0, ""

    .line 109
    :goto_0
    const-string v1, "Tinker.SampleResultService"

    const-string v2, "ScreenReceiver action [%s] "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$1;->val$onScreenOffInterface:Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$1;->val$onScreenOffInterface:Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;

    invoke-interface {v0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;->onScreenOff()V

    .line 118
    :cond_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
