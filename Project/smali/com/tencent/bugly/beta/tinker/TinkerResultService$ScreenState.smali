.class Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/beta/tinker/TinkerResultService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onScreenOffInterface"    # Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$1;

    invoke-direct {v1, p0, p2}, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$1;-><init>(Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method
