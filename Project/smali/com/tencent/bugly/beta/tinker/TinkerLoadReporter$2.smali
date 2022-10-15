.class Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->onLoadResult(Ljava/io/File;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$2;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$2;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->access$100(Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->onPatchRetryLoad()V

    .line 101
    const/4 v0, 0x0

    return v0
.end method
