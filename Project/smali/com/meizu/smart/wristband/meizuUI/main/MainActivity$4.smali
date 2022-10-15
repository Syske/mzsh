.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$4;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x78

    .line 364
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$1000(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$1000(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$1000(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    return-void
.end method
