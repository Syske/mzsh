.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;


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
    .line 263
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method
