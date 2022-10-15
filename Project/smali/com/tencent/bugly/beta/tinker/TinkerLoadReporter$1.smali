.class Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->onLoadPatchListenerReceiveFail(Ljava/io/File;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

.field final synthetic val$patchFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$1;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    iput-object p2, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$1;->val$patchFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$1;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->access$000(Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$1;->val$patchFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->onReceiveUpgradePatch(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    return-void
.end method
