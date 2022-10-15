.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$3;
.super Ljava/lang/Object;
.source "NewBindActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->connectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawComplete()V
    .locals 4

    .prologue
    .line 184
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 185
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    return-void
.end method
