.class Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$3;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setSeletion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

.field final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$3;->val$p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$3;->val$p:I

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->itemHeight:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->scrollTo(II)V

    .line 389
    return-void
.end method
