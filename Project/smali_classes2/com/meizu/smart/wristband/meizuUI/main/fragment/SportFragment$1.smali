.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$1;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 189
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 192
    return-void
.end method
