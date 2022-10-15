.class public Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;
.super Landroid/view/View;
.source "ScaleRulerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final ITEM_HEIGHT_DIVIDER:I = 0xa

.field private static final ITEM_MAX_HEIGHT:I = 0x1c

.field private static final ITEM_MIN_HEIGHT:I = 0x15

.field public static final MOD_TYPE:I = 0x5

.field private static final TEXT_SIZE:I = 0x12


# instance fields
.field private mDefaultMinValue:F

.field private mDensity:F

.field private mHeight:I

.field private mLastX:I

.field private mLineDivider:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;

.field private mMaxValue:F

.field private mMinVelocity:I

.field private mModType:I

.field private mModeBase:I

.field private mMove:I

.field private mNormalLineColor:Ljava/lang/String;

.field private mNormalLineWidth:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectColor:Ljava/lang/String;

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSelectWidth:I

.field private mTextHeight:F

.field private mTextMarginTop:I

.field private mTextPaint:Landroid/graphics/Paint;

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

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    .line 35
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMaxValue:F

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDefaultMinValue:F

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModType:I

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLineDivider:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectWidth:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mNormalLineWidth:I

    .line 52
    const-string v0, "#5ED1DC"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectColor:Ljava/lang/String;

    .line 53
    const-string v0, "#BABABA"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mNormalLineColor:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private changeMoveAndValue()V
    .locals 4

    .prologue
    .line 301
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLineDivider:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 302
    .local v0, "tValue":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 303
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    .line 304
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLineDivider:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    .line 305
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDefaultMinValue:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMaxValue:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 306
    :cond_0
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDefaultMinValue:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDefaultMinValue:F

    :goto_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    .line 307
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    .line 308
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->notifyValueChange()V

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->postInvalidate()V

    .line 314
    return-void

    .line 306
    :cond_3
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMaxValue:F

    goto :goto_0
.end method

.method private countLeftStart(IFF)F
    .locals 3
    .param p1, "value"    # I
    .param p2, "xPosition"    # F
    .param p3, "textWidth"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "xp":F
    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    .line 232
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, p3

    div-float/2addr v1, v2

    sub-float v0, p2, v1

    .line 236
    :goto_0
    return v0

    .line 234
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

    .line 317
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLineDivider:I

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 318
    .local v0, "roundMove":I
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    .line 319
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    .line 320
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMaxValue:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMaxValue:F

    :goto_1
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    .line 321
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDefaultMinValue:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDefaultMinValue:F

    :goto_2
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    .line 323
    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLastX:I

    .line 324
    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    .line 326
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->notifyValueChange()V

    .line 327
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->postInvalidate()V

    .line 328
    return-void

    .line 319
    :cond_0
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    goto :goto_0

    .line 320
    :cond_1
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    goto :goto_1

    .line 321
    :cond_2
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    goto :goto_2
.end method

.method private countVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 293
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 294
    .local v9, "xVelocity":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMinVelocity:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mScroller:Landroid/widget/Scroller;

    float-to-int v3, v9

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v2, v1

    move v4, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 298
    :cond_0
    return-void
.end method

.method private drawMiddleLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 247
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 252
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mHeight:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 254
    return-void
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 172
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mNormalLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mNormalLineColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mWidth:I

    .line 176
    .local v9, "width":I
    const/4 v6, 0x0

    .line 179
    .local v6, "drawCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    mul-int/lit8 v0, v9, 0x4

    if-gt v6, v0, :cond_4

    .line 181
    div-int/lit8 v0, v9, 0x2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLineDivider:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    mul-float/2addr v2, v3

    add-float v1, v0, v2

    .line 183
    .local v1, "xPosition":F
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mWidth:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMaxValue:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 184
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v7

    add-float/2addr v0, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModType:I

    int-to-float v2, v2

    rem-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 185
    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v0, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    :goto_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v7

    add-float/2addr v0, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModType:I

    int-to-float v2, v2

    rem-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "value":Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextMarginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextHeight:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    .line 193
    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    .line 192
    invoke-virtual {p1, v8, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    div-int/lit8 v0, v9, 0x2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLineDivider:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    mul-float/2addr v2, v3

    sub-float v1, v0, v2

    .line 200
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDefaultMinValue:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 201
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v7

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModType:I

    int-to-float v2, v2

    rem-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 202
    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v0, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 207
    :goto_2
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v7

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModType:I

    int-to-float v2, v2

    rem-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 208
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 209
    .restart local v8    # "value":Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextMarginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextHeight:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    .line 210
    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    .line 209
    invoke-virtual {p1, v8, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    int-to-float v0, v6

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLineDivider:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v6, v0

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 188
    :cond_2
    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v0, 0x41f00000    # 30.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float/2addr v3, v4

    add-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 205
    :cond_3
    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v0, 0x41f00000    # 30.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    const/high16 v4, 0x41a80000    # 21.0f

    mul-float/2addr v3, v4

    add-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 218
    .end local v1    # "xPosition":F
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    return-void
.end method

.method private notifyValueChange()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    invoke-interface {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;->onValueChange(F)V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 341
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 342
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 344
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->countMoveEnd()V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 347
    .local v0, "xPosition":I
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLastX:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    .line 348
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->changeMoveAndValue()V

    .line 349
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLastX:I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 81
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 89
    invoke-static {p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->resetDensity(Landroid/content/Context;)V

    .line 90
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mScroller:Landroid/widget/Scroller;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDensity:F

    .line 93
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMinVelocity:I

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextMarginTop:I

    .line 98
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x7fddddde

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/TextUtil;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mTextHeight:F

    .line 101
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    .line 102
    return-void
.end method

.method public initViewParam(FFF)V
    .locals 1
    .param p1, "defaultValue"    # F
    .param p2, "maxValue"    # F
    .param p3, "defaultMinValue"    # F

    .prologue
    const/4 v0, 0x0

    .line 109
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mValue:F

    .line 110
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMaxValue:F

    .line 111
    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mDefaultMinValue:F

    .line 113
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->invalidate()V

    .line 115
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLastX:I

    .line 116
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    .line 117
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->notifyValueChange()V

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->drawScaleLine(Landroid/graphics/Canvas;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->drawMiddleLine(Landroid/graphics/Canvas;)V

    .line 161
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
    .line 150
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mWidth:I

    .line 151
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mHeight:I

    .line 152
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 153
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 259
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 261
    .local v1, "xPosition":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 262
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 264
    :cond_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 266
    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLastX:I

    move v2, v3

    .line 288
    :goto_1
    return v2

    .line 268
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 270
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLastX:I

    .line 271
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    goto :goto_0

    .line 274
    :pswitch_1
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLastX:I

    sub-int/2addr v4, v1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mMove:I

    .line 275
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->changeMoveAndValue()V

    goto :goto_0

    .line 279
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->countMoveEnd()V

    .line 280
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->countVelocityTracker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mListener:Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;

    .line 137
    return-void
.end method

.method public setmLineDivider(I)V
    .locals 0
    .param p1, "mLineDivider"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mLineDivider:I

    .line 86
    return-void
.end method

.method public setmModType(I)V
    .locals 0
    .param p1, "mModType"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModType:I

    .line 122
    return-void
.end method

.method public setmModeBase(I)V
    .locals 0
    .param p1, "mModeBase"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->mModeBase:I

    .line 127
    return-void
.end method
