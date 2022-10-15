.class Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 120
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->getScrollY()I

    move-result v1

    .line 121
    .local v1, "newY":I
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->initialY:I

    sub-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 122
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->initialY:I

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v4, v4, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->itemHeight:I

    rem-int v2, v3, v4

    .line 123
    .local v2, "remainder":I
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->initialY:I

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v4, v4, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->itemHeight:I

    div-int v0, v3, v4

    .line 126
    .local v0, "divided":I
    if-nez v2, :cond_0

    .line 127
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v4, v4, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->offset:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->selectedIndex:I

    .line 129
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)V

    .line 159
    .end local v0    # "divided":I
    .end local v2    # "remainder":I
    :goto_0
    return-void

    .line 131
    .restart local v0    # "divided":I
    .restart local v2    # "remainder":I
    :cond_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->itemHeight:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;II)V

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;II)V

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 156
    .end local v0    # "divided":I
    .end local v2    # "remainder":I
    :cond_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->getScrollY()I

    move-result v4

    iput v4, v3, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->initialY:I

    .line 157
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget-object v4, v4, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->scrollerTask:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v5, v5, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->newCheck:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
