.class public Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
.super Landroid/view/View;
.source "HorizontalPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;,
        Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;,
        Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;,
        Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;,
        Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;
    }
.end annotation


# static fields
.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "HorizontalTimePicker"


# instance fields
.field private adjustScrollerX:Landroid/widget/OverScroller;

.field private boringMetrics:Landroid/text/BoringLayout$Metrics;

.field private dividerSize:F

.field private ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private flingScrollerX:Landroid/widget/OverScroller;

.field private itemClipBounds:Landroid/graphics/RectF;

.field private itemClipBoundsOffset:Landroid/graphics/RectF;

.field private itemWidth:I

.field private lastDownEventX:F

.field private layouts:[Landroid/text/BoringLayout;

.field private leftEdgeEffect:Landroid/widget/EdgeEffect;

.field private mMinimumFlingVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

.field private marqueeRepeatLimit:I

.field private maximumFlingVelocity:I

.field private onItemClicked:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;

.field private onItemSelected:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;

.field private final overscrollDistance:I

.field private pressedItem:I

.field private previousScrollerX:I

.field private rightEdgeEffect:Landroid/widget/EdgeEffect;

.field private scrollingX:Z

.field private selectedItem:I

.field private sideItems:I

.field private textColor:Landroid/content/res/ColorStateList;

.field private textDir:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private textPaint:Landroid/text/TextPaint;

.field private final touchHelper:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;

.field private touchSlop:I

.field private values:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    const/4 v8, -0x1

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->pressedItem:I

    .line 127
    const/4 v8, 0x3

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marqueeRepeatLimit:I

    .line 129
    const/4 v8, 0x0

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    .line 131
    const/4 v8, 0x1

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    .line 149
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 150
    .local v4, "paint":Landroid/text/TextPaint;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 151
    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textPaint:Landroid/text/TextPaint;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/meizu/smart/wristband/R$styleable;->HorizontalPicker:[I

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v9, p3, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 160
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    .line 161
    .local v2, "ellipsize":I
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    .line 164
    .local v5, "sideItems":I
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    .line 165
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    if-nez v8, :cond_0

    .line 166
    const/high16 v8, -0x1000000

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    .line 169
    :cond_0
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 170
    .local v7, "values":[Ljava/lang/CharSequence;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 171
    const/4 v8, 0x3

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marqueeRepeatLimit:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marqueeRepeatLimit:I

    .line 172
    const/4 v8, 0x5

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    .line 173
    const/4 v8, 0x6

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 175
    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 176
    .local v6, "textSize":F
    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v8, v6, v8

    if-lez v8, :cond_1

    .line 177
    invoke-direct {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    packed-switch v2, :pswitch_data_0

    .line 198
    :goto_0
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 199
    .local v3, "fontMetricsInt":Landroid/graphics/Paint$FontMetricsInt;
    new-instance v8, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v8}, Landroid/text/BoringLayout$Metrics;-><init>()V

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    .line 200
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v9, v8, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 201
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v9, v8, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 202
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v9, v8, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 203
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput v9, v8, Landroid/text/BoringLayout$Metrics;->leading:I

    .line 204
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    iget v9, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v9, v8, Landroid/text/BoringLayout$Metrics;->top:I

    .line 205
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    iput v9, v8, Landroid/text/BoringLayout$Metrics;->width:I

    .line 207
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setWillNotDraw(Z)V

    .line 209
    new-instance v8, Landroid/widget/OverScroller;

    invoke-direct {v8, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    .line 210
    new-instance v8, Landroid/widget/OverScroller;

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x40200000    # 2.5f

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v8, p1, v9}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->adjustScrollerX:Landroid/widget/OverScroller;

    .line 213
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 214
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->touchSlop:I

    .line 215
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v8

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mMinimumFlingVelocity:I

    .line 216
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->maximumFlingVelocity:I

    .line 218
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v8

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->overscrollDistance:I

    .line 220
    const/high16 v8, -0x80000000

    iput v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    .line 222
    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setValues([Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setSideItems(I)V

    .line 225
    new-instance v8, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;

    invoke-direct {v8, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)V

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->touchHelper:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;

    .line 226
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->touchHelper:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;

    invoke-static {p0, v8}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 228
    return-void

    .line 180
    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    .end local v3    # "fontMetricsInt":Landroid/graphics/Paint$FontMetricsInt;
    .end local v6    # "textSize":F
    .end local v7    # "values":[Ljava/lang/CharSequence;
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v8

    .line 185
    .restart local v6    # "textSize":F
    .restart local v7    # "values":[Ljava/lang/CharSequence;
    :pswitch_0
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 188
    :pswitch_1
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 191
    :pswitch_2
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 194
    :pswitch_3
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->onItemClicked:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getPositionFromCoordinates(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->onItemSelected:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .prologue
    .line 62
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .prologue
    .line 62
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .prologue
    .line 62
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private adjustToNearestItemX()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v1

    .line 845
    .local v1, "x":I
    int-to-float v0, v1

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 847
    .local v6, "item":I
    if-gez v6, :cond_1

    .line 848
    const/4 v6, 0x0

    .line 853
    :cond_0
    :goto_0
    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->selectedItem:I

    .line 855
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    float-to-int v4, v4

    add-int/2addr v0, v4

    mul-int v7, v0, v6

    .line 857
    .local v7, "itemX":I
    sub-int v3, v7, v1

    .line 859
    .local v3, "deltaX":I
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    .line 860
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->adjustScrollerX:Landroid/widget/OverScroller;

    const/16 v5, 0x320

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 861
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 862
    return-void

    .line 849
    .end local v3    # "deltaX":I
    .end local v7    # "itemX":I
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-le v6, v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v6, v0

    goto :goto_0
.end method

.method private calculateItemSize(II)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v5, 0x0

    .line 866
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 867
    .local v0, "items":I
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    float-to-int v2, v2

    add-int/lit8 v3, v0, -0x1

    mul-int v1, v2, v3

    .line 868
    .local v1, "totalPadding":I
    sub-int v2, p1, v1

    div-int/2addr v2, v0

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    .line 870
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v3, v3

    int-to-float v4, p2

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemClipBounds:Landroid/graphics/RectF;

    .line 871
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemClipBounds:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemClipBoundsOffset:Landroid/graphics/RectF;

    .line 873
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->selectedItem:I

    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollToItem(I)V

    .line 875
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->remakeLayout()V

    .line 876
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->startMarqueeIfNeeded()V

    .line 878
    return-void
.end method

.method private computeScrollX()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 795
    iget-object v12, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    .line 796
    .local v12, "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v12, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->adjustScrollerX:Landroid/widget/OverScroller;

    .line 798
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    invoke-virtual {v12}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 806
    .local v10, "currentScrollerX":I
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 807
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getStartX()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    .line 810
    :cond_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollRange()I

    move-result v11

    .line 811
    .local v11, "range":I
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    if-ltz v0, :cond_5

    if-gez v10, :cond_5

    .line 812
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 820
    :cond_3
    :goto_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    sub-int v1, v10, v0

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollY()I

    move-result v4

    .line 821
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollRange()I

    move-result v5

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->overscrollDistance:I

    move-object v0, p0

    move v6, v2

    move v8, v2

    move v9, v2

    .line 820
    invoke-virtual/range {v0 .. v9}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->overScrollBy(IIIIIIIIZ)Z

    .line 822
    iput v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    .line 824
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 825
    invoke-direct {p0, v12}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->onScrollerFinishedX(Landroid/widget/OverScroller;)V

    .line 828
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->postInvalidate()V

    goto :goto_0

    .line 815
    :cond_5
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    if-gt v0, v11, :cond_3

    if-le v10, v11, :cond_3

    .line 816
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method private drawEdgeEffect(Landroid/graphics/Canvas;Landroid/widget/EdgeEffect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p3, "degrees"    # I

    .prologue
    const/16 v4, 0x10e

    .line 395
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 v3, 0x5a

    if-eq p3, v3, :cond_1

    if-eq p3, v4, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 401
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getWidth()I

    move-result v2

    .line 402
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getHeight()I

    move-result v0

    .line 404
    .local v0, "height":I
    int-to-float v3, p3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 406
    if-ne p3, v4, :cond_3

    .line 407
    neg-int v3, v0

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    :goto_1
    invoke-virtual {p2, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 413
    invoke-virtual {p2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 414
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    .line 415
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->postInvalidateOnAnimation()V

    .line 421
    :cond_2
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 409
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollRange()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScaleX()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 417
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->postInvalidate()V

    goto :goto_2
.end method

.method private finishScrolling()V
    .locals 1

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->adjustToNearestItemX()V

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    .line 890
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->startMarqueeIfNeeded()V

    .line 892
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->onItemSelected:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;

    if-eqz v0, :cond_0

    .line 893
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$2;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)V

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->post(Ljava/lang/Runnable;)Z

    .line 900
    :cond_0
    return-void
.end method

.method private flingX(I)V
    .locals 11
    .param p1, "velocityX"    # I

    .prologue
    const/4 v4, 0x0

    .line 835
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    .line 836
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollY()I

    move-result v2

    neg-int v3, p1

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v5

    .line 837
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getWidth()I

    move-result v5

    div-int/lit8 v9, v5, 0x2

    move v5, v4

    move v7, v4

    move v8, v4

    move v10, v4

    .line 836
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 839
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 840
    return-void
.end method

.method private getColor(II)I
    .locals 12
    .param p1, "scrollX"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v8, 0x40000000    # 2.0f

    .line 949
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 950
    .local v1, "itemWithPadding":I
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p1

    mul-float/2addr v4, v5

    int-to-float v5, v1

    rem-float/2addr v4, v5

    div-float/2addr v4, v8

    int-to-float v5, v1

    div-float/2addr v5, v8

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 951
    .local v2, "proportion":F
    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 952
    sub-float/2addr v2, v9

    .line 956
    :goto_0
    mul-float/2addr v2, v8

    .line 961
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->pressedItem:I

    if-ne v4, p2, :cond_1

    .line 962
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    new-array v5, v11, [I

    const v6, 0x10100a7

    aput v6, v5, v10

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 963
    .local v0, "defaultColor":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 968
    .local v3, "selectedColor":I
    :goto_1
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 954
    .end local v0    # "defaultColor":I
    .end local v3    # "selectedColor":I
    :cond_0
    sub-float v2, v9, v2

    goto :goto_0

    .line 965
    :cond_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 966
    .restart local v0    # "defaultColor":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    new-array v5, v11, [I

    const v6, 0x10100a1

    aput v6, v5, v10

    invoke-virtual {v4, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .restart local v3    # "selectedColor":I
    goto :goto_1

    .line 963
    :array_0
    .array-data 4
        0x10100a7
        0x10100a1
    .end array-data
.end method

.method private getInBoundsX(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 1026
    if-gez p1, :cond_1

    .line 1027
    const/4 p1, 0x0

    .line 1031
    :cond_0
    :goto_0
    return p1

    .line 1028
    :cond_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 1029
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int p1, v0, v1

    goto :goto_0
.end method

.method private getPositionFromCoordinates(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 992
    int-to-float v0, p1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPositionFromTouch(F)I
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    add-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getPositionFromCoordinates(I)I

    move-result v0

    return v0
.end method

.method private getPositionOnScreen(F)I
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 929
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    add-float/2addr v0, v1

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method private getRelativeInBound(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v0

    .line 1014
    .local v0, "scrollX":I
    add-int v1, v0, p1

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getInBoundsX(I)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private getScrollRange()I
    .locals 4

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "scrollRange":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 1037
    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1039
    :cond_0
    return v0
.end method

.method private getTextColor(I)I
    .locals 8
    .param p1, "item"    # I

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v3

    .line 437
    .local v3, "scrollX":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 438
    .local v0, "color":I
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 439
    .local v1, "itemWithPadding":I
    mul-int v4, v1, p1

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v4, v1

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 441
    div-int/lit8 v4, v1, 0x2

    sub-int v2, v3, v4

    .line 442
    .local v2, "position":I
    invoke-direct {p0, v2, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getColor(II)I

    move-result v0

    .line 447
    .end local v2    # "position":I
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->pressedItem:I

    if-ne p1, v4, :cond_0

    .line 444
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textColor:Landroid/content/res/ColorStateList;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    invoke-virtual {v4, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0
.end method

.method private getTextDirectionHeuristic()Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 355
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 357
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 376
    :goto_0
    return-object v1

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 364
    .local v0, "defaultIsRtl":Z
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 367
    if-eqz v0, :cond_2

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 362
    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 367
    .restart local v0    # "defaultIsRtl":Z
    :cond_2
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 370
    :pswitch_0
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->ANYRTL_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 372
    :pswitch_1
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 374
    :pswitch_2
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 376
    :pswitch_3
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LOCALE:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isRtl(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textDir:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getTextDirectionHeuristic()Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textDir:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textDir:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method private onScrollerFinishedX(Landroid/widget/OverScroller;)V
    .locals 1
    .param p1, "scroller"    # Landroid/widget/OverScroller;

    .prologue
    .line 881
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    if-ne p1, v0, :cond_0

    .line 882
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->finishScrolling()V

    .line 884
    :cond_0
    return-void
.end method

.method private remakeLayout()V
    .locals 12

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 383
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    array-length v0, v0

    if-ge v11, v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    aget-object v0, v0, v11

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    aget-object v1, v1, v11

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    move v6, v5

    invoke-virtual/range {v0 .. v10}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    .line 384
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 391
    .end local v11    # "i":I
    :cond_0
    return-void
.end method

.method private scrollToItem(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1001
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollTo(II)V

    .line 1003
    return-void
.end method

.method private selectItem()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->onItemClicked:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)V

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->post(Ljava/lang/Runnable;)Z

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->adjustToNearestItemX()V

    .line 596
    return-void
.end method

.method private setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 977
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 980
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->requestLayout()V

    .line 981
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 983
    :cond_0
    return-void
.end method

.method private smoothScrollBy(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 933
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    mul-int v0, v1, p1

    .line 934
    .local v0, "deltaMoveX":I
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getRelativeInBound(I)I

    move-result v0

    .line 936
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->previousScrollerX:I

    .line 937
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 938
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->stopMarqueeIfNeeded()V

    .line 939
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 940
    return-void
.end method

.method private startMarqueeIfNeeded()V
    .locals 4

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->stopMarqueeIfNeeded()V

    .line 906
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getSelectedItem()I

    move-result v0

    .line 908
    .local v0, "item":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    array-length v2, v2

    if-le v2, v0, :cond_0

    .line 909
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    aget-object v1, v2, v0

    .line 910
    .local v1, "layout":Landroid/text/Layout;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 911
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 912
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-direct {v2, p0, v1, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;Landroid/text/Layout;Z)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    .line 913
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marqueeRepeatLimit:I

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->start(I)V

    .line 917
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_0
    return-void
.end method

.method private stopMarqueeIfNeeded()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->stop()V

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    .line 926
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->computeScrollX()V

    .line 635
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->touchHelper:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x1

    .line 629
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 787
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 788
    return-void
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 640
    return-void
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marqueeRepeatLimit:I

    return v0
.end method

.method public getSelectedItem()I
    .locals 2

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v0

    .line 652
    .local v0, "x":I
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getPositionFromCoordinates(I)I

    move-result v1

    return v1
.end method

.method public getSideItems()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    return v0
.end method

.method public getValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 257
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    .line 260
    .local v5, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 262
    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->selectedItem:I

    .line 264
    .local v7, "selectedItem":I
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->dividerSize:F

    add-float v2, v9, v10

    .line 267
    .local v2, "itemWithPadding":F
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    .line 270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v9, v9

    if-ge v1, v9, :cond_5

    .line 273
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getTextColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 276
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    aget-object v3, v9, v1

    .line 278
    .local v3, "layout":Landroid/text/BoringLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 279
    .local v6, "saveCountHeight":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 281
    const/4 v8, 0x0

    .line 283
    .local v8, "x":F
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/text/BoringLayout;->getLineWidth(I)F

    move-result v4

    .line 284
    .local v4, "lineWidth":F
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v9, v9

    cmpl-float v9, v4, v9

    if-lez v9, :cond_0

    .line 285
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    aget-object v9, v9, v1

    invoke-direct {p0, v9}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 286
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v9, v9

    sub-float v9, v4, v9

    div-float/2addr v9, v13

    add-float/2addr v8, v9

    .line 292
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    if-eqz v9, :cond_1

    if-ne v1, v7, :cond_1

    .line 293
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->getScroll()F

    move-result v9

    add-float/2addr v8, v9

    .line 297
    :cond_1
    neg-float v9, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v3}, Landroid/text/BoringLayout;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    cmpl-float v9, v8, v12

    if-nez v9, :cond_4

    .line 301
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemClipBounds:Landroid/graphics/RectF;

    .line 308
    .local v0, "clipBounds":Landroid/graphics/RectF;
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 309
    invoke-virtual {v3, p1}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;)V

    .line 311
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    if-eqz v9, :cond_2

    if-ne v1, v7, :cond_2

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->shouldDrawGhost()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 312
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marquee:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$Marquee;->getGhostOffset()F

    move-result v9

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    invoke-virtual {v3, p1}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;)V

    .line 317
    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 320
    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 288
    .end local v0    # "clipBounds":Landroid/graphics/RectF;
    :cond_3
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    int-to-float v9, v9

    sub-float v9, v4, v9

    div-float/2addr v9, v13

    sub-float/2addr v8, v9

    goto :goto_1

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemClipBoundsOffset:Landroid/graphics/RectF;

    .line 304
    .restart local v0    # "clipBounds":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemClipBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 305
    invoke-virtual {v0, v8, v12}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 325
    .end local v0    # "clipBounds":Landroid/graphics/RectF;
    .end local v1    # "i":I
    .end local v3    # "layout":Landroid/text/BoringLayout;
    .end local v4    # "lineWidth":F
    .end local v6    # "saveCountHeight":I
    .end local v8    # "x":F
    :cond_5
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 327
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    const/16 v10, 0x10e

    invoke-direct {p0, p1, v9, v10}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->drawEdgeEffect(Landroid/graphics/Canvas;Landroid/widget/EdgeEffect;I)V

    .line 328
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    const/16 v10, 0x5a

    invoke-direct {p0, p1, v9, v10}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->drawEdgeEffect(Landroid/graphics/Canvas;Landroid/widget/EdgeEffect;I)V

    .line 329
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 601
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 617
    :goto_0
    return v0

    .line 605
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 617
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 608
    :sswitch_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->selectItem()V

    goto :goto_0

    .line 611
    :sswitch_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->smoothScrollBy(I)V

    goto :goto_0

    .line 614
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->smoothScrollBy(I)V

    goto :goto_0

    .line 605
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 233
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 234
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 235
    .local v5, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 238
    .local v3, "heightSize":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_0

    .line 239
    move v1, v3

    .line 252
    .local v1, "height":I
    :goto_0
    invoke-virtual {p0, v5, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setMeasuredDimension(II)V

    .line 253
    return-void

    .line 241
    .end local v1    # "height":I
    :cond_0
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 242
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v6, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 243
    .local v4, "heightText":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 245
    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_1

    .line 246
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 248
    .end local v1    # "height":I
    :cond_1
    move v1, v4

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 778
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 780
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 781
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollRange()I

    move-result v4

    move v1, p1

    move v2, p2

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 783
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 725
    instance-of v1, p1, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;

    if-nez v1, :cond_0

    .line 726
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 736
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 730
    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;

    .line 731
    .local v0, "ss":Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 733
    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setSelectedItem(I)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 336
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getTextDirectionHeuristic()Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textDir:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 337
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 740
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 742
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 743
    .local v0, "savedState":Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->selectedItem:I

    invoke-static {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->access$102(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;I)I

    .line 745
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->calculateItemSize(II)V

    .line 456
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    const/4 v2, 0x0

    .line 581
    :goto_0
    return v2

    .line 465
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 466
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 468
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    .line 471
    .local v12, "action":I
    packed-switch v12, :pswitch_data_0

    .line 581
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 474
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 476
    .local v13, "currentMoveX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->lastDownEventX:F

    sub-float/2addr v2, v13

    float-to-int v3, v2

    .line 478
    .local v3, "deltaMoveX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    if-nez v2, :cond_3

    .line 479
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->touchSlop:I

    if-le v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 481
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    if-nez v2, :cond_4

    .line 482
    const/4 v3, 0x0

    .line 483
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->pressedItem:I

    .line 484
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->stopMarqueeIfNeeded()V

    .line 489
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollRange()I

    move-result v7

    .line 491
    .local v7, "range":I
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->overscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 496
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v17, v0

    .line 497
    .local v17, "pulledToX":F
    const/4 v2, 0x0

    cmpg-float v2, v17, v2

    if-gez v2, :cond_8

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_6

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 500
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 511
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->lastDownEventX:F

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    goto/16 :goto_1

    .line 503
    :cond_8
    int-to-float v2, v7

    cmpl-float v2, v17, v2

    if-lez v2, :cond_7

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_9

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 506
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 519
    .end local v3    # "deltaMoveX":I
    .end local v7    # "range":I
    .end local v13    # "currentMoveX":F
    .end local v17    # "pulledToX":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->adjustScrollerX:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_b

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->adjustScrollerX:Landroid/widget/OverScroller;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 527
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->lastDownEventX:F

    .line 529
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    if-nez v2, :cond_a

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getPositionFromTouch(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->pressedItem:I

    .line 532
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    goto/16 :goto_1

    .line 521
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingScrollerX:Landroid/widget/OverScroller;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto :goto_3

    .line 524
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    goto :goto_3

    .line 537
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 538
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->maximumFlingVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 539
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v14, v2

    .line 541
    .local v14, "initialVelocityX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    if-eqz v2, :cond_f

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mMinimumFlingVelocity:I

    if-le v2, v4, :cond_f

    .line 542
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->flingX(I)V

    .line 561
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 562
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_e

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 570
    .end local v14    # "initialVelocityX":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_e
    :pswitch_3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->pressedItem:I

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_2

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_1

    .line 543
    .restart local v14    # "initialVelocityX":I
    .restart local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_d

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 545
    .local v16, "positionX":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    if-nez v2, :cond_11

    .line 547
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getPositionOnScreen(F)I

    move-result v15

    .line 548
    .local v15, "itemPos":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    sub-int v18, v15, v2

    .line 550
    .local v18, "relativePos":I
    if-nez v18, :cond_10

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->selectItem()V

    goto :goto_4

    .line 553
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->smoothScrollBy(I)V

    goto :goto_4

    .line 556
    .end local v15    # "itemPos":I
    .end local v18    # "relativePos":I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollingX:Z

    if-eqz v2, :cond_d

    .line 557
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->finishScrolling()V

    goto :goto_4

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 769
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 771
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->remakeLayout()V

    .line 772
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 774
    :cond_0
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeRepeatLimit"    # I

    .prologue
    .line 665
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->marqueeRepeatLimit:I

    .line 666
    return-void
.end method

.method public setOnItemClickedListener(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;)V
    .locals 0
    .param p1, "onItemClicked"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->onItemClicked:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;

    .line 648
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;)V
    .locals 0
    .param p1, "onItemSelected"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->onItemSelected:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;

    .line 644
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "overScrollMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 751
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 753
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    .line 754
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    .line 760
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 761
    return-void

    .line 756
    :cond_0
    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->leftEdgeEffect:Landroid/widget/EdgeEffect;

    .line 757
    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->rightEdgeEffect:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSelectedItem(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 656
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->selectedItem:I

    .line 657
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->scrollToItem(I)V

    .line 658
    return-void
.end method

.method public setSideItems(I)V
    .locals 2
    .param p1, "sideItems"    # I

    .prologue
    .line 676
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    if-gez v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of items on each side must be grater or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    if-eq v0, p1, :cond_1

    .line 679
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->sideItems:I

    .line 680
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->calculateItemSize(II)V

    .line 682
    :cond_1
    return-void
.end method

.method public setValues([Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 698
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_3

    .line 699
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    .line 701
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [Landroid/text/BoringLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    .line 703
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    array-length v0, v0

    if-ge v11, v0, :cond_1

    .line 704
    iget-object v12, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    new-instance v0, Landroid/text/BoringLayout;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->values:[Ljava/lang/CharSequence;

    aget-object v1, v1, v11

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->boringMetrics:Landroid/text/BoringLayout$Metrics;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->itemWidth:I

    move v6, v5

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    aput-object v0, v12, v11

    .line 703
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 708
    .end local v11    # "i":I
    :cond_0
    new-array v0, v8, [Landroid/text/BoringLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->layouts:[Landroid/text/BoringLayout;

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 713
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->startMarqueeIfNeeded()V

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->requestLayout()V

    .line 717
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->invalidate()V

    .line 720
    :cond_3
    return-void
.end method
