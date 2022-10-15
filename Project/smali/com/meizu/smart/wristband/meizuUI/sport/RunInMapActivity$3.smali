.class Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$3;
.super Ljava/lang/Object;
.source "RunInMapActivity.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->initView()V
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
    .line 617
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 623
    return-void
.end method
