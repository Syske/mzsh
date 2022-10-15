.class public Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;
.super Ljava/lang/Object;
.source "SpeeddByComponentsInitializer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private mMaxSpeedX:F

.field private mMaxSpeedY:F

.field private mMinSpeedX:F

.field private mMinSpeedY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "speedMinX"    # F
    .param p2, "speedMaxX"    # F
    .param p3, "speedMinY"    # F
    .param p4, "speedMaxY"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMinSpeedX:F

    .line 16
    iput p2, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMaxSpeedX:F

    .line 17
    iput p3, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMinSpeedY:F

    .line 18
    iput p4, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMaxSpeedY:F

    .line 19
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 3
    .param p1, "p"    # Lcom/plattysoft/leonids/Particle;
    .param p2, "r"    # Ljava/util/Random;

    .prologue
    .line 23
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMaxSpeedX:F

    iget v2, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMinSpeedX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMinSpeedX:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/plattysoft/leonids/Particle;->mSpeedX:F

    .line 24
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMaxSpeedY:F

    iget v2, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMinSpeedY:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;->mMinSpeedY:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/plattysoft/leonids/Particle;->mSpeedY:F

    .line 25
    return-void
.end method
