.class public Lcom/plattysoft/leonids/modifiers/AlphaModifier;
.super Ljava/lang/Object;
.source "AlphaModifier.java"

# interfaces
.implements Lcom/plattysoft/leonids/modifiers/ParticleModifier;


# instance fields
.field private mDuration:F

.field private mEndTime:J

.field private mFinalValue:I

.field private mInitialValue:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mValueIncrement:F


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 9
    .param p1, "initialValue"    # I
    .param p2, "finalValue"    # I
    .param p3, "startMilis"    # J
    .param p5, "endMilis"    # J

    .prologue
    .line 29
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/plattysoft/leonids/modifiers/AlphaModifier;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    .line 30
    return-void
.end method

.method public constructor <init>(IIJJLandroid/view/animation/Interpolator;)V
    .locals 5
    .param p1, "initialValue"    # I
    .param p2, "finalValue"    # I
    .param p3, "startMilis"    # J
    .param p5, "endMilis"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInitialValue:I

    .line 20
    iput p2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mFinalValue:I

    .line 21
    iput-wide p3, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mStartTime:J

    .line 22
    iput-wide p5, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mEndTime:J

    .line 23
    iget-wide v0, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mEndTime:J

    iget-wide v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iput v0, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mDuration:F

    .line 24
    iget v0, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mFinalValue:I

    iget v1, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInitialValue:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mValueIncrement:F

    .line 25
    iput-object p7, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 26
    return-void
.end method


# virtual methods
.method public apply(Lcom/plattysoft/leonids/Particle;J)V
    .locals 6
    .param p1, "particle"    # Lcom/plattysoft/leonids/Particle;
    .param p2, "miliseconds"    # J

    .prologue
    .line 34
    iget-wide v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mStartTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    .line 35
    iget v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInitialValue:I

    iput v2, p1, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    .line 45
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-wide v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mEndTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 38
    iget v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mFinalValue:I

    iput v2, p1, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-wide v4, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mStartTime:J

    sub-long v4, p2, v4

    long-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mDuration:F

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 42
    .local v0, "interpolaterdValue":F
    iget v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInitialValue:I

    int-to-float v2, v2

    iget v3, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mValueIncrement:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 43
    .local v1, "newAlphaValue":I
    iput v1, p1, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    goto :goto_0
.end method
