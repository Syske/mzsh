.class public Lcom/plattysoft/leonids/initializers/AccelerationInitializer;
.super Ljava/lang/Object;
.source "AccelerationInitializer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private mMaxAngle:I

.field private mMaxValue:F

.field private mMinAngle:I

.field private mMinValue:F


# direct methods
.method public constructor <init>(FFII)V
    .locals 0
    .param p1, "minAcceleration"    # F
    .param p2, "maxAcceleration"    # F
    .param p3, "minAngle"    # I
    .param p4, "maxAngle"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMinValue:F

    .line 16
    iput p2, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMaxValue:F

    .line 17
    iput p3, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMinAngle:I

    .line 18
    iput p4, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMaxAngle:I

    .line 19
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 8
    .param p1, "p"    # Lcom/plattysoft/leonids/Particle;
    .param p2, "r"    # Ljava/util/Random;

    .prologue
    .line 23
    iget v3, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMinAngle:I

    int-to-float v0, v3

    .line 24
    .local v0, "angle":F
    iget v3, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMaxAngle:I

    iget v4, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMinAngle:I

    if-eq v3, v4, :cond_0

    .line 25
    iget v3, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMaxAngle:I

    iget v4, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMinAngle:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget v4, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMinAngle:I

    add-int/2addr v3, v4

    int-to-float v0, v3

    .line 27
    :cond_0
    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 28
    .local v1, "angleInRads":F
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMaxValue:F

    iget v5, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMinValue:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;->mMinValue:F

    add-float v2, v3, v4

    .line 29
    .local v2, "value":F
    float-to-double v4, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p1, Lcom/plattysoft/leonids/Particle;->mAccelerationX:F

    .line 30
    float-to-double v4, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p1, Lcom/plattysoft/leonids/Particle;->mAccelerationY:F

    .line 31
    return-void
.end method
