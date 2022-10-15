.class public Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;
.super Landroid/view/View;
.source "VericalScaleRulerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final ITEM_HEIGHT_DIVIDER:I = 0xa

.field private static final ITEM_MAX_HEIGHT:I = 0x24

.field private static final ITEM_MIN_HEIGHT:I = 0x1e

.field public static final MOD_TYPE:I = 0x5

.field private static final TEXT_SIZE:I = 0x12


# instance fields
.field private mDefaultMinValue:F

.field private mDensity:F

.field private mHeight:I

.field private mLastY:I

.field private mLineDivider:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;

.field private mMaxValue:F

.field private mMinVelocity:I

.field private mModType:I

.field private mMove:I

.field private mNormalLineColor:Ljava/lang/String;

.field private mNormalLineWidth:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectColor:Ljava/lang/String;

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSelectWidth:I

.field private mTextHeight:F

.field private mTextMarginLeft:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F

.field private mValue:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    .line 35
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMaxValue:F

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDefaultMinValue:F

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mModType:I

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLineDivider:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectWidth:I

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mNormalLineWidth:I

    .line 52
    const-string v0, "#5ED1DC"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectColor:Ljava/lang/String;

    .line 53
    const-string v0, "#BABABA"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mNormalLineColor:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private changeMoveAndValue()V
    .locals 4

    .prologue
    .line 285
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLineDivider:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 286
    .local v0, "tValue":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 287
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    .line 288
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLineDivider:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    .line 289
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDefaultMinValue:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMaxValue:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 290
    :cond_0
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDefaultMinValue:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDefaultMinValue:F

    :goto_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    .line 291
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    .line 292
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->notifyValueChange()V

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->postInvalidate()V

    .line 298
    return-void

    .line 290
    :cond_3
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMaxValue:F

    goto :goto_0
.end method

.method private countLeftStart(IFF)F
    .locals 3
    .param p1, "value"    # I
    .param p2, "xPosition"    # F
    .param p3, "textWidth"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "xp":F
    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    .line 216
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, p3

    div-float/2addr v1, v2

    sub-float v0, p2, v1

    .line 220
    :goto_0
    return v0

    .line 218
    :cond_0
    mul-float v1, p3, v2

    div-float/2addr v1, v2

    sub-float v0, p2, v1

    goto :goto_0
.end method

.method private countMoveEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 301
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLineDivider:I

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 302
    .local v0, "roundMove":I
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    .line 303
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    .line 304
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMaxValue:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMaxValue:F

    :goto_1
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    .line 306
    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLastY:I

    .line 307
    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    .line 309
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->notifyValueChange()V

    .line 310
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->postInvalidate()V

    .line 311
    return-void

    .line 303
    :cond_0
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    goto :goto_0

    .line 304
    :cond_1
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    goto :goto_1
.end method

.method private countVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 277
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 278
    .local v9, "xVelocity":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMinVelocity:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    float-to-int v3, v9

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v2, v1

    move v4, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 282
    :cond_0
    return-void
.end method

.method private drawMiddleLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 231
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mWidth:I

    add-int/lit8 v0, v0, -0xf

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41700000    # 15.0f

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    return-void
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 157
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mNormalLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mNormalLineColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mHeight:I

    .line 161
    .local v7, "height":I
    const/4 v6, 0x0

    .line 164
    .local v6, "drawCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mHeight:I

    mul-int/lit8 v0, v0, 0x4

    if-gt v6, v0, :cond_4

    .line 166
    div-int/lit8 v0, v7, 0x2

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLineDivider:I

    mul-int/2addr v1, v8

    int-to-float v1, v1

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    mul-float/2addr v1, v3

    sub-float v2, v0, v1

    .line 168
    .local v2, "yPosition":F
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v1, v8

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMaxValue:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 169
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v1, v8

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mModType:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 170
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    :goto_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v1, v8

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mModType:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 176
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v1, v8

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "value":Ljava/lang/String;
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 184
    .end local v9    # "value":Ljava/lang/String;
    :cond_0
    div-int/lit8 v0, v7, 0x2

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLineDivider:I

    mul-int/2addr v1, v8

    int-to-float v1, v1

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    mul-float/2addr v1, v3

    add-float v2, v0, v1

    .line 185
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v1, v8

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDefaultMinValue:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 186
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v1, v8

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mModType:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 187
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    :goto_2
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v1, v8

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mModType:I

    int-to-float v1, v1

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 193
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    int-to-float v1, v8

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 194
    .restart local v9    # "value":Ljava/lang/String;
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    int-to-float v0, v6

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLineDivider:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 164
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 173
    :cond_2
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 190
    :cond_3
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 201
    .end local v2    # "yPosition":F
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 202
    return-void
.end method

.method private notifyValueChange()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    invoke-interface {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;->onValueChange(F)V

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 324
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 325
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->countMoveEnd()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 330
    .local v0, "xPosition":I
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLastY:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    .line 331
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->changeMoveAndValue()V

    .line 332
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLastY:I

    goto :goto_0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->resetDensity(Landroid/content/Context;)V

    .line 80
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDensity:F

    .line 83
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMinVelocity:I

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextMarginLeft:I

    .line 88
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x7fddddde

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    const-string v1, "000"

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/TextUtil;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextWidth:F

    .line 90
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/TextUtil;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mTextHeight:F

    .line 92
    return-void
.end method

.method public initViewParam(FFF)V
    .locals 1
    .param p1, "defaultValue"    # F
    .param p2, "maxValue"    # F
    .param p3, "defaultMinValue"    # F

    .prologue
    const/4 v0, 0x0

    .line 99
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mValue:F

    .line 100
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMaxValue:F

    .line 101
    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mDefaultMinValue:F

    .line 103
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->invalidate()V

    .line 105
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLastY:I

    .line 106
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    .line 107
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->notifyValueChange()V

    .line 108
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->drawScaleLine(Landroid/graphics/Canvas;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->drawMiddleLine(Landroid/graphics/Canvas;)V

    .line 146
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mWidth:I

    .line 136
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mHeight:I

    .line 137
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 138
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 243
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 245
    .local v1, "yPosition":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 246
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 250
    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLastY:I

    move v2, v3

    .line 272
    :goto_1
    return v2

    .line 252
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 254
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLastY:I

    .line 255
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    goto :goto_0

    .line 258
    :pswitch_1
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mLastY:I

    sub-int/2addr v4, v1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mMove:I

    .line 259
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->changeMoveAndValue()V

    goto :goto_0

    .line 263
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->countMoveEnd()V

    .line 264
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->countVelocityTracker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView$OnValueChangeListener;

    .line 122
    return-void
.end method

.method public setmModType(I)V
    .locals 0
    .param p1, "mModType"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/VericalScaleRulerView;->mModType:I

    .line 112
    return-void
.end method
