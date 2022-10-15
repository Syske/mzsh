.class public Lcom/plattysoft/leonids/modifiers/AccelerationModifier;
.super Ljava/lang/Object;
.source "AccelerationModifier.java"

# interfaces
.implements Lcom/plattysoft/leonids/modifiers/ParticleModifier;


# instance fields
.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 6
    .param p1, "velocity"    # F
    .param p2, "angle"    # F

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    float-to-double v2, p2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 12
    .local v0, "velocityAngleInRads":F
    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/modifiers/AccelerationModifier;->mVelocityX:F

    .line 13
    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/modifiers/AccelerationModifier;->mVelocityY:F

    .line 14
    return-void
.end method


# virtual methods
.method public apply(Lcom/plattysoft/leonids/Particle;J)V
    .locals 4
    .param p1, "particle"    # Lcom/plattysoft/leonids/Particle;
    .param p2, "miliseconds"    # J

    .prologue
    .line 18
    iget v0, p1, Lcom/plattysoft/leonids/Particle;->mCurrentX:F

    iget v1, p0, Lcom/plattysoft/leonids/modifiers/AccelerationModifier;->mVelocityX:F

    long-to-float v2, p2

    mul-float/2addr v1, v2

    long-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/plattysoft/leonids/Particle;->mCurrentX:F

    .line 19
    iget v0, p1, Lcom/plattysoft/leonids/Particle;->mCurrentY:F

    iget v1, p0, Lcom/plattysoft/leonids/modifiers/AccelerationModifier;->mVelocityY:F

    long-to-float v2, p2

    mul-float/2addr v1, v2

    long-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/plattysoft/leonids/Particle;->mCurrentY:F

    .line 20
    return-void
.end method
