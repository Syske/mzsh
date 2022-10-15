.class Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$2;
.super Ljava/lang/Object;
.source "CycleWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$2;->val$position:I

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$300(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$401(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;I)V

    .line 264
    return-void
.end method
