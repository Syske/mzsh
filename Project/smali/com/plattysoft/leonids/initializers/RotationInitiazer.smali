.class public Lcom/plattysoft/leonids/initializers/RotationInitiazer;
.super Ljava/lang/Object;
.source "RotationInitiazer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private mMaxAngle:I

.field private mMinAngle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "minAngle"    # I
    .param p2, "maxAngle"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMinAngle:I

    .line 14
    iput p2, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMaxAngle:I

    .line 15
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 3
    .param p1, "p"    # Lcom/plattysoft/leonids/Particle;
    .param p2, "r"    # Ljava/util/Random;

    .prologue
    .line 19
    iget v1, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMaxAngle:I

    iget v2, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMinAngle:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v2, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMinAngle:I

    add-int v0, v1, v2

    .line 20
    .local v0, "value":I
    int-to-float v1, v0

    iput v1, p1, Lcom/plattysoft/leonids/Particle;->mInitialRotation:F

    .line 21
    return-void
.end method
