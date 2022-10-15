.class Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$6;
.super Ljava/lang/Object;
.source "RunInMapActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->doContinue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v1, 0x8

    .line 827
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$700(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 835
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 823
    return-void
.end method
