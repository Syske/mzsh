.class public Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CycleWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CycleWheelViewAdapter"
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$1000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const v0, 0x7fffffff

    .line 472
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 477
    const-string v0, ""

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 482
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 492
    if-nez p2, :cond_0

    .line 493
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$1100(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$1200(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 496
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 497
    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$1000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    .line 498
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :goto_0
    return-object p2

    .line 501
    :cond_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "mWheelLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 464
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    return-void
.end method
