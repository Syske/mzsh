.class public Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;
.super Landroid/support/v4/view/ViewPager;
.source "ViewPagerCompat.java"


# instance fields
.field private mViewTouchMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;->mViewTouchMode:Z

    .line 20
    return-void
.end method


# virtual methods
.method public arrowScroll(I)Z
    .locals 2
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;->mViewTouchMode:Z

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    const/16 v1, 0x11

    if-eq p1, v1, :cond_2

    const/16 v1, 0x42

    if-ne p1, v1, :cond_0

    .line 61
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;->mViewTouchMode:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setViewTouchMode(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 23
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;->beginFakeDrag()Z

    .line 30
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;->mViewTouchMode:Z

    .line 31
    return-void

    .line 26
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/ViewPagerCompat;->endFakeDrag()V

    goto :goto_0
.end method
