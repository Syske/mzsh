.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->setListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$202(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Z)Z

    .line 286
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$400(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$402(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;I)I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisconnect =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$400(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->isBand()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$300(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$400(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$402(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;I)I

    goto :goto_0
.end method
