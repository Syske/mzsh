.class public Lcom/meizu/smart/wristband/meizuUI/widget/GifView;
.super Landroid/view/View;
.source "GifView.java"


# static fields
.field private static final DEFAULT_MOVIE_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimationTime:I

.field private mLeft:F

.field private mMeasuredMovieHeight:I

.field private mMeasuredMovieWidth:I

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieResourceId:I

.field private mMovieStart:J

.field private volatile mPaused:Z

.field private mScale:F

.field private mTop:F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mCurrentAnimationTime:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mVisible:Z

    .line 43
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mPaused:Z

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method private drawMovieFrame(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mCurrentAnimationTime:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 191
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mScale:F

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 192
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mLeft:F

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mScale:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mTop:F

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mScale:F

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 194
    return-void
.end method

.method private invalidateView()V
    .locals 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->postInvalidateOnAnimation()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->invalidate()V

    goto :goto_0
.end method

.method private setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 64
    :cond_0
    sget-object v1, Lcom/meizu/smart/wristband/R$styleable;->GifView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieResourceId:I

    .line 67
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mPaused:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieResourceId:I

    if-eq v1, v3, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    .line 73
    :cond_1
    return-void
.end method

.method private updateAnimationTime()V
    .locals 8

    .prologue
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 175
    .local v2, "now":J
    iget-wide v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieStart:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 176
    iput-wide v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieStart:J

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 180
    .local v0, "dur":I
    if-nez v0, :cond_1

    .line 181
    const/16 v0, 0x3e8

    .line 184
    :cond_1
    iget-wide v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieStart:J

    sub-long v4, v2, v4

    int-to-long v6, v0

    rem-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mCurrentAnimationTime:I

    .line 185
    return-void
.end method


# virtual methods
.method public getMovie()Landroid/graphics/Movie;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mPaused:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 152
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mPaused:Z

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->updateAnimationTime()V

    .line 154
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    .line 155
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->invalidateView()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 143
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 144
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMeasuredMovieWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mLeft:F

    .line 145
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMeasuredMovieHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mTop:F

    .line 146
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mVisible:Z

    .line 147
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 126
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->width()I

    move-result v2

    .line 128
    .local v2, "movieWidth":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->height()I

    move-result v1

    .line 129
    .local v1, "movieHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 130
    .local v0, "maximumWidth":I
    int-to-float v4, v2

    int-to-float v5, v0

    div-float v3, v4, v5

    .line 131
    .local v3, "scaleW":F
    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mScale:F

    .line 132
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMeasuredMovieWidth:I

    .line 133
    int-to-float v4, v1

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMeasuredMovieHeight:I

    .line 134
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMeasuredMovieWidth:I

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMeasuredMovieHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->setMeasuredDimension(II)V

    .line 139
    .end local v0    # "maximumWidth":I
    .end local v1    # "movieHeight":I
    .end local v2    # "movieWidth":I
    .end local v3    # "scaleW":F
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->getSuggestedMinimumWidth()I

    move-result v4

    .line 137
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->getSuggestedMinimumHeight()I

    move-result v5

    .line 136
    invoke-virtual {p0, v4, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    const/4 v0, 0x1

    .line 198
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 199
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mVisible:Z

    .line 200
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->invalidateView()V

    .line 201
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 206
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mVisible:Z

    .line 207
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->invalidateView()V

    .line 208
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 213
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mVisible:Z

    .line 214
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->invalidateView()V

    .line 215
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMovie(Landroid/graphics/Movie;)V
    .locals 0
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    .line 89
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->requestLayout()V

    .line 90
    return-void
.end method

.method public setMovieResource(I)V
    .locals 2
    .param p1, "movieResId"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieResourceId:I

    .line 82
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovie:Landroid/graphics/Movie;

    .line 84
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->requestLayout()V

    .line 85
    return-void
.end method

.method public setMovieTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mCurrentAnimationTime:I

    .line 98
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->invalidate()V

    .line 99
    return-void
.end method

.method public setPaused(Z)V
    .locals 4
    .param p1, "paused"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mPaused:Z

    .line 108
    if-nez p1, :cond_0

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mCurrentAnimationTime:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->mMovieStart:J

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/GifView;->invalidate()V

    .line 113
    return-void
.end method
