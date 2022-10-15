.class public Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;
.super Landroid/widget/ScrollView;
.source "ListScrollView.java"


# instance fields
.field private innerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method private checkArea(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 45
    .local v5, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 46
    .local v6, "y":F
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 47
    .local v2, "locate":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 48
    aget v1, v2, v8

    .line 49
    .local v1, "l":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int v3, v1, v9

    .line 50
    .local v3, "r":I
    aget v4, v2, v7

    .line 51
    .local v4, "t":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v0, v4, v9

    .line 52
    .local v0, "b":I
    int-to-float v9, v1

    cmpg-float v9, v9, v5

    if-gez v9, :cond_0

    int-to-float v9, v3

    cmpg-float v9, v5, v9

    if-gez v9, :cond_0

    int-to-float v9, v4

    cmpg-float v9, v9, v6

    if-gez v9, :cond_0

    int-to-float v9, v0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_0

    .line 55
    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method


# virtual methods
.method public getInnerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;->innerView:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;->innerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;->innerView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;->checkArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setListView(Landroid/view/View;)V
    .locals 0
    .param p1, "listView"    # Landroid/view/View;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;->innerView:Landroid/view/View;

    .line 64
    return-void
.end method
