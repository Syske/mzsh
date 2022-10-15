.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->setListener()V
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
    .line 446
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method
