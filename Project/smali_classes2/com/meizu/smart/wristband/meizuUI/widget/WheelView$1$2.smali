.class Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;

.field final synthetic val$divided:I

.field final synthetic val$remainder:I


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->this$1:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->val$remainder:I

    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->val$divided:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->this$1:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->this$1:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v2, v2, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->initialY:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->val$remainder:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->smoothScrollTo(II)V

    .line 145
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->this$1:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->val$divided:I

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->this$1:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v2, v2, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->offset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->selectedIndex:I

    .line 146
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;->this$1:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)V

    .line 147
    return-void
.end method
