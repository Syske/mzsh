.class public Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;
.super Landroid/view/View;
.source "DecimalScaleRulerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final ITEM_HEIGHT_DIVIDER:I = 0x8

.field private static final ITEM_MIN_HEIGHT:I = 0x1e


# instance fields
.field private mDensity:F

.field private mHeight:I

.field private mItemSpacing:I

.field private mLastX:I

.field private mLineDivider:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:I

.field private mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;

.field private mMaxLineHeight:I

.field private mMaxOffset:I

.field private mMaxValue:F

.field private mMiddleLineHeight:I

.field private mMinLineHeight:I

.field private mMinValue:F

.field private mMinVelocity:I

.field private mModType:F

.field private mMove:I

.field private mNormalLineColor:Ljava/lang/String;

.field private mNormalLineWidth:I

.field private mOffset:F

.field private mPerSpanValue:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectColor:Ljava/lang/String;

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSelectWidth:I

.field private mTextHeight:F

.field private mTextMarginTop:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTotalLine:I

.field private mValue:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v1, 0x8

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mValue:F

    .line 34
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMaxValue:F

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinValue:F

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mPerSpanValue:I

    .line 44
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    .line 48
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectWidth:I

    .line 49
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mNormalLineWidth:I

    .line 57
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLineDivider:I

    .line 59
    const-string v0, "#7183F7"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectColor:Ljava/lang/String;

    .line 60
    const-string v0, "#BABABA"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mNormalLineColor:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private changeMoveAndValue()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 302
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMove:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    .line 303
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMaxOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 304
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMaxOffset:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    .line 305
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMove:I

    .line 306
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 312
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinValue:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mItemSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mPerSpanValue:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mValue:F

    .line 313
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->notifyValueChange()V

    .line 314
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->postInvalidate()V

    .line 315
    return-void

    .line 307
    :cond_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 308
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    .line 309
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMove:I

    .line 310
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0
.end method

.method private countMoveEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 285
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMove:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    .line 286
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMaxOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 287
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMaxOffset:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    .line 292
    :cond_0
    :goto_0
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLastX:I

    .line 293
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMove:I

    .line 295
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinValue:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mItemSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mPerSpanValue:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mValue:F

    .line 296
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinValue:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mValue:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mPerSpanValue:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mItemSpacing:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    .line 297
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->notifyValueChange()V

    .line 298
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->postInvalidate()V

    .line 299
    return-void

    .line 288
    :cond_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 289
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    goto :goto_0
.end method

.method private countVelocityTracker()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 278
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 279
    .local v9, "xVelocity":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinVelocity:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

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
    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 238
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mHeight:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 240
    return-void
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 192
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mNormalLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mNormalLineColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mWidth:I

    .line 196
    .local v10, "width":I
    const/4 v6, 0x0

    .line 199
    .local v6, "drawCount":I
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mWidth:I

    div-int/lit8 v8, v0, 0x2

    .line 201
    .local v8, "srcPointX":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTotalLine:I

    if-ge v7, v0, :cond_3

    .line 202
    int-to-float v0, v8

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLineDivider:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mDensity:F

    mul-float/2addr v2, v3

    add-float v1, v0, v2

    .line 204
    .local v1, "left":F
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mWidth:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 201
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 208
    :cond_1
    int-to-float v0, v7

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    rem-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 209
    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v0, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mDensity:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 214
    :goto_2
    int-to-float v0, v7

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    rem-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 215
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mPerSpanValue:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 216
    .local v9, "value":Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mDensity:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextMarginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextHeight:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 211
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v0, 0x41f00000    # 30.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mDensity:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    add-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 222
    .end local v1    # "left":F
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 223
    return-void
.end method

.method private notifyValueChange()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mValue:F

    invoke-interface {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;->onValueChange(F)V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 329
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 330
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->countMoveEnd()V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 335
    .local v0, "xPosition":I
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLastX:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMove:I

    .line 336
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->changeMoveAndValue()V

    .line 337
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLastX:I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const v3, -0x7fddddde

    const/high16 v2, 0x40400000    # 3.0f

    .line 86
    invoke-static {p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->resetDensity(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mDensity:F

    .line 89
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinVelocity:I

    .line 90
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mItemSpacing:I

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLineWidth:I

    .line 92
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinLineHeight:I

    .line 93
    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextMarginTop:I

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextMarginTop:I

    .line 98
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/TextUtil;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTextHeight:F

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    return-void
.end method

.method public initViewParam(FFFI)V
    .locals 2
    .param p1, "defaultValue"    # F
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F
    .param p4, "spanValue"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mValue:F

    .line 113
    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMaxValue:F

    .line 114
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMinValue:F

    .line 115
    iput p4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mPerSpanValue:I

    .line 116
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    mul-float/2addr v0, p3

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTotalLine:I

    .line 117
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mTotalLine:I

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mItemSpacing:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMaxOffset:I

    .line 119
    sub-float v0, p2, p1

    int-to-float v1, p4

    div-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mItemSpacing:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mOffset:F

    .line 120
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->invalidate()V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->setVisibility(I)V

    .line 122
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->drawScaleLine(Landroid/graphics/Canvas;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->drawMiddleLine(Landroid/graphics/Canvas;)V

    .line 181
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 136
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 137
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mWidth:I

    .line 138
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mHeight:I

    .line 140
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 245
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 247
    .local v1, "xPosition":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 248
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 250
    :cond_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 252
    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLastX:I

    move v2, v3

    .line 273
    :goto_1
    return v2

    .line 254
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 255
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLastX:I

    .line 256
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMove:I

    goto :goto_0

    .line 259
    :pswitch_1
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mLastX:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mMove:I

    .line 260
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->changeMoveAndValue()V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->countMoveEnd()V

    .line 265
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->countVelocityTracker()V

    goto :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;

    .line 131
    return-void
.end method

.method public setmModType(F)V
    .locals 0
    .param p1, "mModType"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->mModType:F

    .line 109
    return-void
.end method
