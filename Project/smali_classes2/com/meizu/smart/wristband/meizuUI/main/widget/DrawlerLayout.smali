.class public Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;
.super Landroid/widget/LinearLayout;
.source "DrawlerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$ShrinkingTask;,
        Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;
    }
.end annotation


# static fields
.field public static final SCROLL_SPEED:I = -0x14


# instance fields
.field private ableToPull:Z

.field private child0:Landroid/view/View;

.field private child0Height:I

.field private child0LayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private child1:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

.field private child1Height:I

.field private context:Landroid/content/Context;

.field private interceptDown:F

.field private lastChild0Height:I

.field private ll_point:Landroid/widget/RelativeLayout;

.field private loadOnce:Z

.field private maxScroll:I

.field private topHeight:I

.field private touchSlop:I

.field private viewPagerCanScroll:Lcom/meizu/smart/wristband/meizuUI/main/widget/ViewPagerCanScroll;

.field private view_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private yDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v0, 0xc8

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/16 v0, 0xc8

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    .line 96
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->context:Landroid/content/Context;

    .line 97
    const/high16 v0, 0x431b0000    # 155.0f

    invoke-static {p1, v0}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->setOrientation(I)V

    .line 99
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->touchSlop:I

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/16 v0, 0xc8

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0LayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    .prologue
    .line 23
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->sleep(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->view_list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    .prologue
    .line 23
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    return v0
.end method

.method private addAllView(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 139
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 140
    check-cast v1, Landroid/view/ViewGroup;

    .line 141
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 142
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->addAllView(Landroid/view/View;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->view_list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    return-void
.end method

.method private setIsAbleToPull(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->ableToPull:Z

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->ableToPull:Z

    goto :goto_0
.end method

.method private sleep(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 322
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaView()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->view_list:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->view_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 132
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->viewPagerCanScroll:Lcom/meizu/smart/wristband/meizuUI/main/widget/ViewPagerCanScroll;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/ViewPagerCanScroll;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->viewPagerCanScroll:Lcom/meizu/smart/wristband/meizuUI/main/widget/ViewPagerCanScroll;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/ViewPagerCanScroll;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0266

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->addAllView(Landroid/view/View;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->ll_point:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->addAllView(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 155
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->interceptDown:F

    .line 156
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->interceptDown:F

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->yDown:F

    .line 157
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->lastChild0Height:I

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->interceptDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->interceptDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child1:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->isOntheTop()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x1

    .line 112
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 113
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->loadOnce:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    const v1, 0x7f0e00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/ViewPagerCanScroll;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->viewPagerCanScroll:Lcom/meizu/smart/wristband/meizuUI/main/widget/ViewPagerCanScroll;

    .line 116
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->ll_point:Landroid/widget/RelativeLayout;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->view_list:Ljava/util/List;

    .line 118
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->getAlphaView()V

    .line 119
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child1:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .line 120
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    .line 121
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child1:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child1Height:I

    .line 122
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0LayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 123
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->maxScroll:I

    .line 124
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->loadOnce:Z

    .line 126
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->setIsAbleToPull(Landroid/view/MotionEvent;)V

    .line 186
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->ableToPull:Z

    if-eqz v5, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 228
    :pswitch_0
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->lastChild0Height:I

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    if-ne v5, v6, :cond_7

    .line 230
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)V

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v4}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    :cond_0
    :goto_0
    :pswitch_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_1
    return v4

    .line 191
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 192
    .local v3, "yMove":F
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->yDown:F

    sub-float v5, v3, v5

    float-to-int v0, v5

    .line 194
    .local v0, "distance":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->touchSlop:I

    if-lt v5, v6, :cond_1

    .line 197
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->maxScroll:I

    if-le v4, v5, :cond_2

    .line 198
    if-gez v0, :cond_3

    .line 199
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->maxScroll:I

    neg-int v0, v4

    .line 204
    :cond_2
    :goto_1
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->lastChild0Height:I

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    if-le v4, v5, :cond_5

    if-gez v0, :cond_5

    .line 205
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0LayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0LayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->view_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 208
    .local v2, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    sub-int/2addr v5, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    double-to-float v1, v6

    .line 209
    .local v1, "i":F
    float-to-double v6, v1

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpl-double v5, v6, v8

    if-lez v5, :cond_4

    .line 210
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 200
    .end local v1    # "i":F
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    if-lez v0, :cond_2

    .line 201
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->maxScroll:I

    goto :goto_1

    .line 212
    .restart local v1    # "i":F
    .restart local v2    # "view":Landroid/view/View;
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 214
    .end local v1    # "i":F
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->lastChild0Height:I

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    if-ge v4, v5, :cond_0

    if-lez v0, :cond_0

    .line 215
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0LayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0LayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->topHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 218
    .restart local v1    # "i":F
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->view_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 219
    .restart local v2    # "view":Landroid/view/View;
    cmpg-float v5, v1, v8

    if-gez v5, :cond_6

    .line 220
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 222
    :cond_6
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 231
    .end local v0    # "distance":I
    .end local v1    # "i":F
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "yMove":F
    :cond_7
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->lastChild0Height:I

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->child0Height:I

    if-ne v5, v6, :cond_0

    .line 233
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$ShrinkingTask;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$ShrinkingTask;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)V

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v4}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$ShrinkingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
