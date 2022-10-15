.class Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;
.super Ljava/lang/Object;
.source "RunPreActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

.field final synthetic val$sa:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;Landroid/view/animation/ScaleAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->val$sa:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->lambda$onAnimationEnd$337(Landroid/view/animation/ScaleAnimation;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$337(Landroid/view/animation/ScaleAnimation;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "GO"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->access$010(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)I

    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    :goto_1
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->finish()V

    goto :goto_1
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 60
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->val$sa:Landroid/view/animation/ScaleAnimation;

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;Landroid/view/animation/ScaleAnimation;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 84
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 55
    return-void
.end method
