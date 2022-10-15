.class Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;
.super Ljava/lang/Object;
.source "MyWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 118
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getScrollY()I

    move-result v1

    .line 119
    .local v1, "newY":I
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->initialY:I

    sub-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->initialY:I

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v4, v4, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    rem-int v2, v3, v4

    .line 121
    .local v2, "remainder":I
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->initialY:I

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v4, v4, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    div-int v0, v3, v4

    .line 124
    .local v0, "divided":I
    if-nez v2, :cond_0

    .line 125
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v4, v4, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    .line 127
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    .line 157
    .end local v0    # "divided":I
    .end local v2    # "remainder":I
    :goto_0
    return-void

    .line 129
    .restart local v0    # "divided":I
    .restart local v2    # "remainder":I
    :cond_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;II)V

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;II)V

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 154
    .end local v0    # "divided":I
    .end local v2    # "remainder":I
    :cond_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getScrollY()I

    move-result v4

    iput v4, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->initialY:I

    .line 155
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget-object v4, v4, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollerTask:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v5, v5, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->newCheck:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
