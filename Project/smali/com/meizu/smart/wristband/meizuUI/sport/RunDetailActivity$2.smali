.class Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$2;
.super Ljava/lang/Object;
.source "RunDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->doContinue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v1, 0x8

    .line 300
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 308
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 296
    return-void
.end method
