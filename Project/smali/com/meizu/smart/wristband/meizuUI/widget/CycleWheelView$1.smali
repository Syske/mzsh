.class Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;
.super Ljava/lang/Object;
.source "CycleWheelView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V

    .line 157
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/16 v5, 0x32

    .line 137
    if-nez p2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    .line 141
    .local v0, "deltaY":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    .line 151
    .end local v0    # "deltaY":F
    .end local v1    # "itemView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local v0    # "deltaY":F
    .restart local v1    # "itemView":Landroid/view/View;
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;F)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->smoothScrollBy(II)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-static {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;F)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->smoothScrollBy(II)V

    goto :goto_0
.end method
