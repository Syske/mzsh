.class public Lcom/plattysoft/leonids/Particle;
.super Ljava/lang/Object;
.source "Particle.java"


# instance fields
.field public mAccelerationX:F

.field public mAccelerationY:F

.field public mAlpha:I

.field private mBitmapHalfHeight:I

.field private mBitmapHalfWidth:I

.field public mCurrentX:F

.field public mCurrentY:F

.field protected mImage:Landroid/graphics/Bitmap;

.field public mInitialRotation:F

.field private mInitialX:F

.field private mInitialY:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/plattysoft/leonids/modifiers/ParticleModifier;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:F

.field public mRotationSpeed:F

.field public mScale:F

.field public mSpeedX:F

.field public mSpeedY:F

.field protected mStartingMilisecond:J

.field private mTimeToLive:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mScale:F

    .line 20
    const/16 v0, 0xff

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    .line 22
    iput v1, p0, Lcom/plattysoft/leonids/Particle;->mInitialRotation:F

    .line 24
    iput v1, p0, Lcom/plattysoft/leonids/Particle;->mRotationSpeed:F

    .line 26
    iput v1, p0, Lcom/plattysoft/leonids/Particle;->mSpeedX:F

    .line 27
    iput v1, p0, Lcom/plattysoft/leonids/Particle;->mSpeedY:F

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/Particle;->mPaint:Landroid/graphics/Paint;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/plattysoft/leonids/Particle;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/plattysoft/leonids/Particle;->mImage:Landroid/graphics/Bitmap;

    .line 58
    return-void
.end method


# virtual methods
.method public activate(JLjava/util/List;)Lcom/plattysoft/leonids/Particle;
    .locals 1
    .param p1, "startingMilisecond"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/plattysoft/leonids/modifiers/ParticleModifier;",
            ">;)",
            "Lcom/plattysoft/leonids/Particle;"
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "modifiers":Ljava/util/List;, "Ljava/util/List<Lcom/plattysoft/leonids/modifiers/ParticleModifier;>;"
    iput-wide p1, p0, Lcom/plattysoft/leonids/Particle;->mStartingMilisecond:J

    .line 103
    iput-object p3, p0, Lcom/plattysoft/leonids/Particle;->mModifiers:Ljava/util/List;

    .line 104
    return-object p0
.end method

.method public configure(JFF)V
    .locals 1
    .param p1, "timeToLive"    # J
    .param p3, "emiterX"    # F
    .param p4, "emiterY"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfWidth:I

    .line 67
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfHeight:I

    .line 69
    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfWidth:I

    int-to-float v0, v0

    sub-float v0, p3, v0

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mInitialX:F

    .line 70
    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfHeight:I

    int-to-float v0, v0

    sub-float v0, p4, v0

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mInitialY:F

    .line 71
    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mInitialX:F

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mCurrentX:F

    .line 72
    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mInitialY:F

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mCurrentY:F

    .line 74
    iput-wide p1, p0, Lcom/plattysoft/leonids/Particle;->mTimeToLive:J

    .line 75
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 93
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mRotation:F

    iget v2, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 94
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mScale:F

    iget v2, p0, Lcom/plattysoft/leonids/Particle;->mScale:F

    iget v3, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfHeight:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 95
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mCurrentX:F

    iget v2, p0, Lcom/plattysoft/leonids/Particle;->mCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 96
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/plattysoft/leonids/Particle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mScale:F

    .line 62
    const/16 v0, 0xff

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    .line 63
    return-void
.end method

.method public update(J)Z
    .locals 7
    .param p1, "miliseconds"    # J

    .prologue
    .line 78
    iget-wide v4, p0, Lcom/plattysoft/leonids/Particle;->mStartingMilisecond:J

    sub-long v2, p1, v4

    .line 79
    .local v2, "realMiliseconds":J
    iget-wide v4, p0, Lcom/plattysoft/leonids/Particle;->mTimeToLive:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1

    .line 82
    :cond_0
    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mInitialX:F

    iget v4, p0, Lcom/plattysoft/leonids/Particle;->mSpeedX:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget v4, p0, Lcom/plattysoft/leonids/Particle;->mAccelerationX:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iput v1, p0, Lcom/plattysoft/leonids/Particle;->mCurrentX:F

    .line 83
    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mInitialY:F

    iget v4, p0, Lcom/plattysoft/leonids/Particle;->mSpeedY:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget v4, p0, Lcom/plattysoft/leonids/Particle;->mAccelerationY:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iput v1, p0, Lcom/plattysoft/leonids/Particle;->mCurrentY:F

    .line 84
    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mInitialRotation:F

    iget v4, p0, Lcom/plattysoft/leonids/Particle;->mRotationSpeed:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    iput v1, p0, Lcom/plattysoft/leonids/Particle;->mRotation:F

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/plattysoft/leonids/Particle;->mModifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/plattysoft/leonids/Particle;->mModifiers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/plattysoft/leonids/modifiers/ParticleModifier;

    invoke-interface {v1, p0, v2, v3}, Lcom/plattysoft/leonids/modifiers/ParticleModifier;->apply(Lcom/plattysoft/leonids/Particle;J)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
