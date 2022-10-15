.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$3;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
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
    .line 320
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Z)V

    .line 329
    :cond_0
    return-void

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
