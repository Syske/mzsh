.class public Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
.super Landroid/widget/ScrollView;
.source "MyWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;
    }
.end annotation


# static fields
.field public static final OFF_SET_DEFAULT:I = 0x1

.field private static final SCROLL_DIRECTION_DOWN:I = 0x1

.field private static final SCROLL_DIRECTION_UP:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private color_normal:I

.field private context:Landroid/content/Context;

.field displayItemCount:I

.field initialY:I

.field itemHeight:I

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field newCheck:I

.field offset:I

.field private onWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;

.field paint:Landroid/graphics/Paint;

.field private scrollDirection:I

.field scrollerTask:Ljava/lang/Runnable;

.field selectedAreaBorder:[I

.field selectedIndex:I

.field viewWidth:I

.field private views:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "#9a000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->color_normal:I

    .line 86
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    .line 98
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    .line 166
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->newCheck:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollDirection:I

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v0, "#9a000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->color_normal:I

    .line 86
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    .line 98
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    .line 166
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->newCheck:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollDirection:I

    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const-string v0, "#9a000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->color_normal:I

    .line 86
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    .line 98
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    .line 166
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->newCheck:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollDirection:I

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->onSeletedCallBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->obtainSelectedAreaBorder()[I

    move-result-object v0

    return-object v0
.end method

.method private createView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 8
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 187
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v2, "tv":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 190
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    const/high16 v3, 0x41700000    # 15.0f

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->dip2px(F)I

    move-result v1

    .line 194
    .local v1, "padding":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    if-nez v3, :cond_0

    .line 196
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getViewMeasuredHeight(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    .line 197
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->views:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->displayItemCount:I

    mul-int/2addr v5, v6

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 200
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->displayItemCount:I

    mul-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v2
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    .line 424
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 425
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    return-object v0
.end method

.method private getViewMeasuredHeight(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 430
    .local v1, "width":I
    const v2, 0x1fffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 431
    .local v0, "expandSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    return v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->context:Landroid/content/Context;

    .line 106
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setVerticalScrollBarEnabled(Z)V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->views:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->views:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->addView(Landroid/view/View;)V

    .line 114
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollerTask:Ljava/lang/Runnable;

    .line 161
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 175
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->displayItemCount:I

    .line 177
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "item":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->views:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->createView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 181
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->refreshItemView(I)V

    .line 182
    return-void
.end method

.method private obtainSelectedAreaBorder()[I
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedAreaBorder:[I

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedAreaBorder:[I

    .line 301
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedAreaBorder:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 302
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedAreaBorder:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedAreaBorder:[I

    return-object v0
.end method

.method private onSeletedCallBack()V
    .locals 4

    .prologue
    .line 369
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->onWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->onWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;->onSelected(ILjava/lang/String;)V

    .line 373
    :cond_0
    return-void
.end method

.method private refreshItemView(I)V
    .locals 8
    .param p1, "y"    # I

    .prologue
    .line 242
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    div-int v6, p1, v6

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    add-int v4, v6, v7

    .line 243
    .local v4, "position":I
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    rem-int v5, p1, v6

    .line 244
    .local v5, "remainder":I
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    div-int v1, p1, v6

    .line 246
    .local v1, "divided":I
    if-nez v5, :cond_2

    .line 247
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    add-int v4, v1, v6

    .line 279
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 280
    .local v0, "childSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 281
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 282
    .local v3, "itemView":Landroid/widget/TextView;
    if-nez v3, :cond_3

    .line 291
    .end local v3    # "itemView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 249
    .end local v0    # "childSize":I
    .end local v2    # "i":I
    :cond_2
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 250
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    add-int/2addr v6, v1

    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 285
    .restart local v0    # "childSize":I
    .restart local v2    # "i":I
    .restart local v3    # "itemView":Landroid/widget/TextView;
    :cond_3
    if-ne v4, v2, :cond_4

    .line 286
    const-string v6, "#5ED1DC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_4
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->color_normal:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 401
    div-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->fling(I)V

    .line 402
    return-void
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    return v0
.end method

.method public getOnWheelViewListener()Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->onWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;

    return-object v0
.end method

.method public getSeletedIndex()I
    .locals 2

    .prologue
    .line 395
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSeletedItem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 227
    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->refreshItemView(I)V

    .line 229
    if-le p2, p4, :cond_0

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollDirection:I

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollDirection:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 360
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->viewWidth:I

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->startScrollerTask()V

    .line 410
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 318
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->viewWidth:I

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->viewWidth:I

    .line 320
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->viewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->paint:Landroid/graphics/Paint;

    .line 325
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->paint:Landroid/graphics/Paint;

    const-string v1, "#5ED1DC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 329
    :cond_1
    new-instance p1, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;

    .end local p1    # "background":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    .line 353
    .restart local p1    # "background":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 4
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
    .line 68
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 72
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->items:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->initData()V

    .line 82
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    .line 94
    return-void
.end method

.method public setOnWheelViewListener(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;)V
    .locals 0
    .param p1, "onWheelViewListener"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->onWheelViewListener:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$OnWheelViewListener;

    .line 421
    return-void
.end method

.method public setSeletion(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 376
    move v0, p1

    .line 377
    .local v0, "p":I
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->selectedIndex:I

    .line 378
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$3;

    invoke-direct {v1, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;I)V

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->post(Ljava/lang/Runnable;)Z

    .line 388
    return-void
.end method

.method public startScrollerTask()V
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->initialY:I

    .line 171
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollerTask:Ljava/lang/Runnable;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->newCheck:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method
