.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->showConnectDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$700(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/Subscription;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$700(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$700(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$502(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Z)Z

    .line 291
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    .line 292
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    return-void
.end method
