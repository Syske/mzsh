.class Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;
.super Ljava/lang/Object;
.source "MyWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

.field final synthetic val$divided:I

.field final synthetic val$remainder:I


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->val$remainder:I

    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->val$divided:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v2, v2, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->initialY:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->val$remainder:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    iget-object v3, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->smoothScrollTo(II)V

    .line 134
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->val$divided:I

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v2, v2, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    .line 135
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    .line 136
    return-void
.end method
