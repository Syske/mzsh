.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$2;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->initView(Landroid/view/View;)V
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
    .line 197
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->isBand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
