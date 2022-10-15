.class Lcom/desay/wheel/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/desay/wheel/widget/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay/wheel/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay/wheel/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/desay/wheel/widget/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/desay/wheel/widget/WheelView;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v0}, Lcom/desay/wheel/widget/WheelView;->access$000(Lcom/desay/wheel/widget/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-virtual {v0}, Lcom/desay/wheel/widget/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 157
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v0, v1}, Lcom/desay/wheel/widget/WheelView;->access$002(Lcom/desay/wheel/widget/WheelView;Z)Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v0, v1}, Lcom/desay/wheel/widget/WheelView;->access$202(Lcom/desay/wheel/widget/WheelView;I)I

    .line 161
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-virtual {v0}, Lcom/desay/wheel/widget/WheelView;->invalidate()V

    .line 162
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v0}, Lcom/desay/wheel/widget/WheelView;->access$200(Lcom/desay/wheel/widget/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v0}, Lcom/desay/wheel/widget/WheelView;->access$300(Lcom/desay/wheel/widget/WheelView;)Lcom/desay/wheel/widget/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v1}, Lcom/desay/wheel/widget/WheelView;->access$200(Lcom/desay/wheel/widget/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/desay/wheel/widget/WheelScroller;->scroll(II)V

    .line 168
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v1, p1}, Lcom/desay/wheel/widget/WheelView;->access$100(Lcom/desay/wheel/widget/WheelView;I)V

    .line 144
    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-virtual {v1}, Lcom/desay/wheel/widget/WheelView;->getHeight()I

    move-result v0

    .line 145
    .local v0, "height":I
    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v1}, Lcom/desay/wheel/widget/WheelView;->access$200(Lcom/desay/wheel/widget/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v1, v0}, Lcom/desay/wheel/widget/WheelView;->access$202(Lcom/desay/wheel/widget/WheelView;I)I

    .line 147
    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v1}, Lcom/desay/wheel/widget/WheelView;->access$300(Lcom/desay/wheel/widget/WheelView;)Lcom/desay/wheel/widget/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/desay/wheel/widget/WheelScroller;->stopScrolling()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v1}, Lcom/desay/wheel/widget/WheelView;->access$200(Lcom/desay/wheel/widget/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 149
    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    neg-int v2, v0

    invoke-static {v1, v2}, Lcom/desay/wheel/widget/WheelView;->access$202(Lcom/desay/wheel/widget/WheelView;I)I

    .line 150
    iget-object v1, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-static {v1}, Lcom/desay/wheel/widget/WheelView;->access$300(Lcom/desay/wheel/widget/WheelView;)Lcom/desay/wheel/widget/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/desay/wheel/widget/WheelScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/desay/wheel/widget/WheelView;->access$002(Lcom/desay/wheel/widget/WheelView;Z)Z

    .line 138
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$1;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-virtual {v0}, Lcom/desay/wheel/widget/WheelView;->notifyScrollingListenersAboutStart()V

    .line 139
    return-void
.end method
