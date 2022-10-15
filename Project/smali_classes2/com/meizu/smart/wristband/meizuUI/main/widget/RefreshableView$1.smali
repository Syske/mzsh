.class Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$1;
.super Ljava/lang/Object;
.source "RefreshableView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->updateProgressState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x5e

    if-le v0, v3, :cond_0

    const-string v0, "100"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    return-void

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
