.class Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$2;
.super Ljava/lang/Object;
.source "NewRunInMapActivity.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 826
    return-void
.end method
