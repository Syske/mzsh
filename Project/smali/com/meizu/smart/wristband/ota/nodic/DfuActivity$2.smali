.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$2;
.super Ljava/lang/Object;
.source "DfuActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$2;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawComplete()V
    .locals 4

    .prologue
    .line 195
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 196
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 197
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$2;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 198
    return-void
.end method
