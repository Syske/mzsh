.class public Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;
.super Landroid/widget/TextView;
.source "SlideUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;
    }
.end annotation


# static fields
.field public static final STATE_LOCK:I = 0x1

.field public static final STATE_MOVING:I = 0x3

.field public static final STATE_UNLOCK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlideUnlockView"


# instance fields
.field private blockBackgoundWidth:I

.field private blockHeight:I

.field private blockWidth:I

.field public currentState:I

.field private downOnBlock:Z

.field handler:Landroid/os/Handler;

.field private onUnLockListener:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;

.field private slideUnlockBackground:Landroid/graphics/Bitmap;

.field private slideUnlockBlock:Landroid/graphics/Bitmap;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;)V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->handler:Landroid/os/Handler;

    .line 103
    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->currentState:I

    .line 106
    sget-object v3, Lcom/meizu/smart/wristband/R$styleable;->SlideUnlockButton:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 114
    .local v1, "slideUnlockBackgroundResource":I
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 122
    .local v2, "slideUnlockBlockResource":I
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setSlideUnlockBackground(I)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setSlideUnlockBlock(I)V

    .line 130
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->postInvalidate()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    .prologue
    .line 19
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;
    .param p1, "x1"    # F

    .prologue
    .line 19
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    .prologue
    .line 19
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockBackgoundWidth:I

    return v0
.end method


# virtual methods
.method public isDownOnBlock(FFFF)Z
    .locals 5
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "y1"    # F
    .param p4, "y2"    # F

    .prologue
    .line 271
    sub-float v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float v3, p3, p4

    .line 272
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v4, p3, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 273
    .local v1, "value":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 274
    .local v0, "sqrt":F
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 277
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOnBackground(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 147
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->currentState:I

    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    return-void

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockWidth:I

    sub-int v0, v1, v2

    .line 159
    .local v0, "unlockX":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 162
    .end local v0    # "unlockX":I
    :pswitch_2
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 163
    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    .line 167
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 164
    :cond_1
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 165
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 197
    const-string v0, "SlideUnlockView"

    const-string v1, "onMeauser....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    .line 199
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setMeasuredDimension(II)V

    .line 200
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    const/4 v6, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    return v7

    .line 209
    :pswitch_0
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->currentState:I

    if-eq v2, v3, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->y:F

    .line 215
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v0, v2, v5

    .line 216
    .local v0, "blockCenterX":F
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v1, v2, v5

    .line 217
    .local v1, "blockCenterY":F
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->y:F

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->isDownOnBlock(FFFF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->downOnBlock:Z

    .line 218
    const-string v2, "SlideUnlockView"

    const-string v3, "down......................"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->postInvalidate()V

    goto :goto_0

    .line 226
    .end local v0    # "blockCenterX":F
    .end local v1    # "blockCenterY":F
    :pswitch_1
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->downOnBlock:Z

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->y:F

    .line 230
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->currentState:I

    .line 231
    const-string v2, "SlideUnlockView"

    const-string v3, "move......................"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->postInvalidate()V

    goto :goto_0

    .line 237
    :pswitch_2
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->currentState:I

    if-ne v2, v3, :cond_0

    .line 240
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->x:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->onUnLockListener:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;

    if-eqz v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->onUnLockListener:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;

    invoke-interface {v2, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;->setUnLocked(Z)V

    .line 254
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->downOnBlock:Z

    .line 256
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->postInvalidate()V

    goto :goto_0

    .line 248
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->currentState:I

    .line 250
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->onUnLockListener:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->onUnLockListener:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;

    invoke-interface {v2, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;->setUnLocked(Z)V

    goto :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->currentState:I

    .line 299
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->postInvalidate()V

    .line 300
    return-void
.end method

.method public setOnUnLockListener(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;)V
    .locals 0
    .param p1, "onUnLockListener"    # Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->onUnLockListener:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;

    .line 287
    return-void
.end method

.method public setSlideUnlockBackground(I)V
    .locals 2
    .param p1, "slideUnlockBackgroundResource"    # I

    .prologue
    .line 176
    const-string v0, "SlideUnlockView"

    const-string v1, "setSlideUnlockBackground....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    .line 180
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockBackgoundWidth:I

    .line 182
    return-void
.end method

.method public setSlideUnlockBlock(I)V
    .locals 2
    .param p1, "slideUnlockBlockResource"    # I

    .prologue
    .line 185
    const-string v0, "SlideUnlockView"

    const-string v1, "setSlideUnlockBlock....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    .line 189
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockWidth:I

    .line 190
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->blockHeight:I

    .line 191
    return-void
.end method
