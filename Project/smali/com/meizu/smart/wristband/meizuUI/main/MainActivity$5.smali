.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 441
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 445
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/meizu/smart/wristband/constant/OtherContant;->handler_cmd_progress:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 446
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 447
    .local v0, "progress":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    .line 452
    .end local v0    # "progress":I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 448
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/meizu/smart/wristband/constant/OtherContant;->handler_cmd_refrush:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 450
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->refreshManual()V

    goto :goto_0
.end method
