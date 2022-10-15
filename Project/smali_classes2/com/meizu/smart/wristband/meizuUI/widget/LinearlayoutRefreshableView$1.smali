.class Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$1;
.super Ljava/lang/Object;
.source "LinearlayoutRefreshableView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    return-void
.end method
