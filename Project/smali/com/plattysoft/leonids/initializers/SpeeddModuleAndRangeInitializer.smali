.class public Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;
.super Ljava/lang/Object;
.source "SpeeddModuleAndRangeInitializer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private mMaxAngle:I

.field private mMinAngle:I

.field private mSpeedMax:F

.field private mSpeedMin:F


# direct methods
.method public constructor <init>(FFII)V
    .locals 3
    .param p1, "speedMin"    # F
    .param p2, "speedMax"    # F
    .param p3, "minAngle"    # I
    .param p4, "maxAngle"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mSpeedMin:F

    .line 16
    iput p2, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mSpeedMax:F

    .line 17
    iput p3, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    .line 18
    iput p4, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    .line 20
    :goto_0
    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    if-gez v1, :cond_0

    .line 21
    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    add-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    goto :goto_0

    .line 23
    :cond_0
    :goto_1
    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    if-gez v1, :cond_1

    .line 24
    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    add-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    goto :goto_1

    .line 27
    :cond_1
    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    iget v2, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    if-le v1, v2, :cond_2

    .line 28
    iget v0, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    .line 29
    .local v0, "tmp":I
    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    iput v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    .line 30
    iput v0, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    .line 32
    .end local v0    # "tmp":I
    :cond_2
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 8
    .param p1, "p"    # Lcom/plattysoft/leonids/Particle;
    .param p2, "r"    # Ljava/util/Random;

    .prologue
    .line 36
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mSpeedMax:F

    iget v5, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mSpeedMin:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mSpeedMin:F

    add-float v2, v3, v4

    .line 38
    .local v2, "speed":F
    iget v3, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    iget v4, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    if-ne v3, v4, :cond_0

    .line 39
    iget v0, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    .line 44
    .local v0, "angle":I
    :goto_0
    int-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 45
    .local v1, "angleInRads":F
    float-to-double v4, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p1, Lcom/plattysoft/leonids/Particle;->mSpeedX:F

    .line 46
    float-to-double v4, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p1, Lcom/plattysoft/leonids/Particle;->mSpeedY:F

    .line 47
    return-void

    .line 42
    .end local v0    # "angle":I
    .end local v1    # "angleInRads":F
    :cond_0
    iget v3, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMaxAngle:I

    iget v4, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget v4, p0, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;->mMinAngle:I

    add-int v0, v3, v4

    .restart local v0    # "angle":I
    goto :goto_0
.end method
