.class public Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;
.super Ljava/lang/Object;
.source "RotationSpeedInitializer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private mMaxRotationSpeed:F

.field private mMinRotationSpeed:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "minRotationSpeed"    # F
    .param p2, "maxRotationSpeed"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMinRotationSpeed:F

    .line 14
    iput p2, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMaxRotationSpeed:F

    .line 15
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 4
    .param p1, "p"    # Lcom/plattysoft/leonids/Particle;
    .param p2, "r"    # Ljava/util/Random;

    .prologue
    .line 19
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMaxRotationSpeed:F

    iget v3, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMinRotationSpeed:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMinRotationSpeed:F

    add-float v0, v1, v2

    .line 20
    .local v0, "rotationSpeed":F
    iput v0, p1, Lcom/plattysoft/leonids/Particle;->mRotationSpeed:F

    .line 21
    return-void
.end method
