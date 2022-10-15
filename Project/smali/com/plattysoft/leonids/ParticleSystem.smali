.class public Lcom/plattysoft/leonids/ParticleSystem;
.super Ljava/lang/Object;
.source "ParticleSystem.java"


# static fields
.field private static final TIMMERTASK_INTERVAL:J = 0x32L


# instance fields
.field private mActivatedParticles:I

.field private final mActiveParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/plattysoft/leonids/Particle;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentTime:J

.field private mDpToPxScale:F

.field private mDrawingView:Lcom/plattysoft/leonids/ParticleField;

.field private mEmiterXMax:I

.field private mEmiterXMin:I

.field private mEmiterYMax:I

.field private mEmiterYMin:I

.field private mEmitingTime:J

.field private mInitializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/plattysoft/leonids/initializers/ParticleInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxParticles:I

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

.field private mParentLocation:[I

.field private mParentView:Landroid/view/ViewGroup;

.field private mParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/plattysoft/leonids/Particle;",
            ">;"
        }
    .end annotation
.end field

.field private mParticlesPerMilisecond:F

.field private mRandom:Ljava/util/Random;

.field private mTimeToLive:J

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIJ)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "drawableRedId"    # I
    .param p4, "timeToLive"    # J

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v6, 0x1020002

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IIJI)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "drawableRedId"    # I
    .param p4, "timeToLive"    # J
    .param p6, "parentViewId"    # I

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    .line 109
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;IJI)V
    .locals 5
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "timeToLive"    # J
    .param p5, "parentResId"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    .line 67
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mRandom:Ljava/util/Random;

    .line 68
    invoke-virtual {p1, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mModifiers:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    .line 73
    iput p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    .line 77
    iput-wide p3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    .line 79
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    .line 80
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 83
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDpToPxScale:F

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/Bitmap;J)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "timeToLive"    # J

    .prologue
    .line 163
    const v6, 0x1020002

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/Bitmap;JI)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/Bitmap;JI)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "timeToLive"    # J
    .param p6, "parentViewId"    # I

    .prologue
    .line 175
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IJI)V

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    new-instance v2, Lcom/plattysoft/leonids/Particle;

    invoke-direct {v2, p3}, Lcom/plattysoft/leonids/Particle;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/AnimationDrawable;J)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "animation"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p4, "timeToLive"    # J

    .prologue
    .line 190
    const v6, 0x1020002

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/AnimationDrawable;JI)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/AnimationDrawable;JI)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "animation"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p4, "timeToLive"    # J
    .param p6, "parentViewId"    # I

    .prologue
    .line 203
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IJI)V

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge v0, v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    new-instance v2, Lcom/plattysoft/leonids/AnimatedParticle;

    invoke-direct {v2, p3}, Lcom/plattysoft/leonids/AnimatedParticle;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;J)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "timeToLive"    # J

    .prologue
    .line 120
    const v6, 0x1020002

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V
    .locals 10
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "maxParticles"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "timeToLive"    # J
    .param p6, "parentViewId"    # I

    .prologue
    .line 132
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p4

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IJI)V

    .line 133
    instance-of v1, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 134
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .end local p3    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 135
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge v8, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    new-instance v2, Lcom/plattysoft/leonids/Particle;

    invoke-direct {v2, v7}, Lcom/plattysoft/leonids/Particle;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 139
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "i":I
    .restart local p3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v1, p3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    move-object v0, p3

    .line 140
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 141
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge v8, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    new-instance v2, Lcom/plattysoft/leonids/AnimatedParticle;

    invoke-direct {v2, v0}, Lcom/plattysoft/leonids/AnimatedParticle;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 148
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v8    # "i":I
    .end local p3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/plattysoft/leonids/ParticleSystem;)J
    .locals 2
    .param p0, "x0"    # Lcom/plattysoft/leonids/ParticleSystem;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$014(Lcom/plattysoft/leonids/ParticleSystem;J)J
    .locals 3
    .param p0, "x0"    # Lcom/plattysoft/leonids/ParticleSystem;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/plattysoft/leonids/ParticleSystem;J)V
    .locals 1
    .param p0, "x0"    # Lcom/plattysoft/leonids/ParticleSystem;
    .param p1, "x1"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->onUpdate(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/plattysoft/leonids/ParticleSystem;)V
    .locals 0
    .param p0, "x0"    # Lcom/plattysoft/leonids/ParticleSystem;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/plattysoft/leonids/ParticleSystem;->cleanupAnimation()V

    return-void
.end method

.method private activateParticle(J)V
    .locals 9
    .param p1, "delay"    # J

    .prologue
    .line 518
    iget-object v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/plattysoft/leonids/Particle;

    .line 519
    .local v1, "p":Lcom/plattysoft/leonids/Particle;
    invoke-virtual {v1}, Lcom/plattysoft/leonids/Particle;->init()V

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/plattysoft/leonids/initializers/ParticleInitializer;

    iget-object v5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mRandom:Ljava/util/Random;

    invoke-interface {v4, v1, v5}, Lcom/plattysoft/leonids/initializers/ParticleInitializer;->initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iget v5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    invoke-direct {p0, v4, v5}, Lcom/plattysoft/leonids/ParticleSystem;->getFromRange(II)I

    move-result v2

    .line 525
    .local v2, "particleX":I
    iget v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iget v5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    invoke-direct {p0, v4, v5}, Lcom/plattysoft/leonids/ParticleSystem;->getFromRange(II)I

    move-result v3

    .line 526
    .local v3, "particleY":I
    iget-wide v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/plattysoft/leonids/Particle;->configure(JFF)V

    .line 527
    iget-object v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mModifiers:Ljava/util/List;

    invoke-virtual {v1, p1, p2, v4}, Lcom/plattysoft/leonids/Particle;->activate(JLjava/util/List;)Lcom/plattysoft/leonids/Particle;

    .line 528
    iget-object v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    .line 530
    return-void
.end method

.method private cleanupAnimation()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    .line 562
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 563
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 564
    return-void
.end method

.method private configureEmiter(II)V
    .locals 2
    .param p1, "emitterX"    # I
    .param p2, "emitterY"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p1, v0

    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 377
    iget v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    .line 378
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v0, p2, v0

    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 379
    iget v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    .line 380
    return-void
.end method

.method private configureEmiter(Landroid/view/View;I)V
    .locals 5
    .param p1, "emiter"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 471
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 472
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 475
    const/4 v1, 0x3

    invoke-direct {p0, p2, v1}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    aget v1, v0, v4

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 477
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    .line 494
    :goto_0
    const/16 v1, 0x30

    invoke-direct {p0, p2, v1}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    aget v1, v0, v3

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 496
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    .line 511
    :goto_1
    return-void

    .line 479
    :cond_0
    const/4 v1, 0x5

    invoke-direct {p0, p2, v1}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 481
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    goto :goto_0

    .line 483
    :cond_1
    invoke-direct {p0, p2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 485
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    goto :goto_0

    .line 489
    :cond_2
    aget v1, v0, v4

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 490
    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    goto :goto_0

    .line 498
    :cond_3
    const/16 v1, 0x50

    invoke-direct {p0, p2, v1}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 499
    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 500
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    goto :goto_1

    .line 502
    :cond_4
    const/16 v1, 0x10

    invoke-direct {p0, p2, v1}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 503
    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 504
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    goto/16 :goto_1

    .line 508
    :cond_5
    aget v1, v0, v3

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 509
    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    goto/16 :goto_1
.end method

.method private getFromRange(II)I
    .locals 2
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 533
    if-ne p1, p2, :cond_0

    .line 536
    .end local p1    # "minValue":I
    :goto_0
    return p1

    .restart local p1    # "minValue":I
    :cond_0
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mRandom:Ljava/util/Random;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private hasGravity(II)Z
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "gravityToCheck"    # I

    .prologue
    .line 514
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onUpdate(J)V
    .locals 9
    .param p1, "miliseconds"    # J

    .prologue
    .line 541
    :goto_0
    iget-wide v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    cmp-long v3, p1, v4

    if-ltz v3, :cond_1

    :cond_0
    iget-wide v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    int-to-float v3, v3

    iget v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticlesPerMilisecond:F

    long-to-float v5, p1

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->activateParticle(J)V

    goto :goto_0

    .line 546
    :cond_2
    iget-object v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    monitor-enter v4

    .line 547
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 548
    iget-object v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/plattysoft/leonids/Particle;

    invoke-virtual {v3, p1, p2}, Lcom/plattysoft/leonids/Particle;->update(J)Z

    move-result v0

    .line 549
    .local v0, "active":Z
    if-nez v0, :cond_3

    .line 550
    iget-object v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/plattysoft/leonids/Particle;

    .line 551
    .local v2, "p":Lcom/plattysoft/leonids/Particle;
    add-int/lit8 v1, v1, -0x1

    .line 552
    iget-object v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v2    # "p":Lcom/plattysoft/leonids/Particle;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    .end local v0    # "active":Z
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    iget-object v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {v3}, Lcom/plattysoft/leonids/ParticleField;->postInvalidate()V

    .line 557
    return-void

    .line 555
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private startAnimator(Landroid/view/animation/Interpolator;J)V
    .locals 4
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "animnationTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 439
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    long-to-int v2, p2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    .line 440
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 441
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/plattysoft/leonids/ParticleSystem$2;

    invoke-direct {v1, p0}, Lcom/plattysoft/leonids/ParticleSystem$2;-><init>(Lcom/plattysoft/leonids/ParticleSystem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 448
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/plattysoft/leonids/ParticleSystem$3;

    invoke-direct {v1, p0}, Lcom/plattysoft/leonids/ParticleSystem$3;-><init>(Lcom/plattysoft/leonids/ParticleSystem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 465
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 466
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 467
    return-void
.end method

.method private startEmiting(I)V
    .locals 6
    .param p1, "particlesPerSecond"    # I

    .prologue
    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    .line 352
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticlesPerMilisecond:F

    .line 354
    new-instance v0, Lcom/plattysoft/leonids/ParticleField;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/plattysoft/leonids/ParticleField;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    .line 355
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 356
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    .line 357
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/plattysoft/leonids/ParticleField;->setParticles(Ljava/util/ArrayList;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->updateParticlesBeforeStartTime(I)V

    .line 359
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimer:Ljava/util/Timer;

    .line 360
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/plattysoft/leonids/ParticleSystem$1;

    invoke-direct {v1, p0}, Lcom/plattysoft/leonids/ParticleSystem$1;-><init>(Lcom/plattysoft/leonids/ParticleSystem;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 367
    return-void
.end method

.method private startEmiting(II)V
    .locals 6
    .param p1, "particlesPerSecond"    # I
    .param p2, "emitingTime"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    .line 384
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticlesPerMilisecond:F

    .line 386
    new-instance v0, Lcom/plattysoft/leonids/ParticleField;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/plattysoft/leonids/ParticleField;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    .line 387
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/plattysoft/leonids/ParticleField;->setParticles(Ljava/util/ArrayList;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->updateParticlesBeforeStartTime(I)V

    .line 391
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    .line 392
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    add-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->startAnimator(Landroid/view/animation/Interpolator;J)V

    .line 393
    return-void
.end method

.method private updateParticlesBeforeStartTime(I)V
    .locals 12
    .param p1, "particlesPerSecond"    # I

    .prologue
    .line 591
    if-nez p1, :cond_1

    .line 603
    :cond_0
    return-void

    .line 594
    :cond_1
    iget-wide v8, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 595
    .local v0, "currentTimeInMs":J
    int-to-long v8, p1

    div-long v4, v0, v8

    .line 596
    .local v4, "framesCount":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    .line 599
    iget-wide v8, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    div-long v2, v8, v4

    .line 600
    .local v2, "frameTimeInMs":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    int-to-long v8, v6

    cmp-long v7, v8, v4

    if-gtz v7, :cond_0

    .line 601
    int-to-long v8, v6

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-direct {p0, v8, v9}, Lcom/plattysoft/leonids/ParticleSystem;->onUpdate(J)V

    .line 600
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addModifier(Lcom/plattysoft/leonids/modifiers/ParticleModifier;)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 1
    .param p1, "modifier"    # Lcom/plattysoft/leonids/modifiers/ParticleModifier;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 585
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 586
    invoke-direct {p0}, Lcom/plattysoft/leonids/ParticleSystem;->cleanupAnimation()V

    .line 588
    :cond_1
    return-void
.end method

.method public dpToPx(F)F
    .locals 1
    .param p1, "dp"    # F

    .prologue
    .line 151
    iget v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDpToPxScale:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public emit(III)V
    .locals 0
    .param p1, "emitterX"    # I
    .param p2, "emitterY"    # I
    .param p3, "particlesPerSecond"    # I

    .prologue
    .line 396
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->configureEmiter(II)V

    .line 397
    invoke-direct {p0, p3}, Lcom/plattysoft/leonids/ParticleSystem;->startEmiting(I)V

    .line 398
    return-void
.end method

.method public emit(IIII)V
    .locals 0
    .param p1, "emitterX"    # I
    .param p2, "emitterY"    # I
    .param p3, "particlesPerSecond"    # I
    .param p4, "emitingTime"    # I

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->configureEmiter(II)V

    .line 371
    invoke-direct {p0, p3, p4}, Lcom/plattysoft/leonids/ParticleSystem;->startEmiting(II)V

    .line 372
    return-void
.end method

.method public emit(Landroid/view/View;I)V
    .locals 1
    .param p1, "emiter"    # Landroid/view/View;
    .param p2, "particlesPerSecond"    # I

    .prologue
    .line 333
    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, p2}, Lcom/plattysoft/leonids/ParticleSystem;->emitWithGravity(Landroid/view/View;II)V

    .line 334
    return-void
.end method

.method public emit(Landroid/view/View;II)V
    .locals 1
    .param p1, "emiter"    # Landroid/view/View;
    .param p2, "particlesPerSecond"    # I
    .param p3, "emitingTime"    # I

    .prologue
    .line 321
    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/plattysoft/leonids/ParticleSystem;->emitWithGravity(Landroid/view/View;III)V

    .line 322
    return-void
.end method

.method public emitWithGravity(Landroid/view/View;II)V
    .locals 0
    .param p1, "emiter"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "particlesPerSecond"    # I

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->configureEmiter(Landroid/view/View;I)V

    .line 347
    invoke-direct {p0, p3}, Lcom/plattysoft/leonids/ParticleSystem;->startEmiting(I)V

    .line 348
    return-void
.end method

.method public emitWithGravity(Landroid/view/View;III)V
    .locals 0
    .param p1, "emiter"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "particlesPerSecond"    # I
    .param p4, "emitingTime"    # I

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->configureEmiter(Landroid/view/View;I)V

    .line 309
    invoke-direct {p0, p3, p4}, Lcom/plattysoft/leonids/ParticleSystem;->startEmiting(II)V

    .line 310
    return-void
.end method

.method public oneShot(Landroid/view/View;I)V
    .locals 1
    .param p1, "emiter"    # Landroid/view/View;
    .param p2, "numParticles"    # I

    .prologue
    .line 411
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/plattysoft/leonids/ParticleSystem;->oneShot(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 412
    return-void
.end method

.method public oneShot(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "emiter"    # Landroid/view/View;
    .param p2, "numParticles"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 422
    const/16 v1, 0x11

    invoke-direct {p0, p1, v1}, Lcom/plattysoft/leonids/ParticleSystem;->configureEmiter(Landroid/view/View;I)V

    .line 423
    const/4 v1, 0x0

    iput v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    .line 424
    iget-wide v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    iput-wide v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge v0, v1, :cond_0

    .line 427
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->activateParticle(J)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    new-instance v1, Lcom/plattysoft/leonids/ParticleField;

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/plattysoft/leonids/ParticleField;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    .line 431
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 432
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/plattysoft/leonids/ParticleField;->setParticles(Ljava/util/ArrayList;)V

    .line 435
    iget-wide v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    invoke-direct {p0, p3, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->startAnimator(Landroid/view/animation/Interpolator;J)V

    .line 436
    return-void
.end method

.method public setAcceleration(FI)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2
    .param p1, "acceleration"    # F
    .param p2, "angle"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;

    invoke-direct {v1, p1, p1, p2, p2}, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;-><init>(FFII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-object p0
.end method

.method public setAccelerationModuleAndAndAngleRange(FFII)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 4
    .param p1, "minAcceleration"    # F
    .param p2, "maxAcceleration"    # F
    .param p3, "minAngle"    # I
    .param p4, "maxAngle"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;

    invoke-virtual {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v2

    invoke-virtual {p0, p2}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v3

    invoke-direct {v1, v2, v3, p3, p4}, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;-><init>(FFII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-object p0
.end method

.method public setFadeOut(J)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 294
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/plattysoft/leonids/ParticleSystem;->setFadeOut(JLandroid/view/animation/Interpolator;)Lcom/plattysoft/leonids/ParticleSystem;

    move-result-object v0

    return-object v0
.end method

.method public setFadeOut(JLandroid/view/animation/Interpolator;)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 9
    .param p1, "milisecondsBeforeEnd"    # J
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mModifiers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/modifiers/AlphaModifier;

    const/16 v2, 0xff

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    sub-long/2addr v4, p1

    iget-wide v6, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/plattysoft/leonids/modifiers/AlphaModifier;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-object p0
.end method

.method public setInitialRotationRange(II)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2
    .param p1, "minAngle"    # I
    .param p2, "maxAngle"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/RotationInitiazer;

    invoke-direct {v1, p1, p2}, Lcom/plattysoft/leonids/initializers/RotationInitiazer;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    return-object p0
.end method

.method public setParentViewGroup(Landroid/view/ViewGroup;)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    .line 269
    return-object p0
.end method

.method public setRotationSpeed(F)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2
    .param p1, "rotationSpeed"    # F

    .prologue
    .line 247
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;

    invoke-direct {v1, p1, p1}, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-object p0
.end method

.method public setRotationSpeedRange(FF)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2
    .param p1, "minRotationSpeed"    # F
    .param p2, "maxRotationSpeed"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;

    invoke-direct {v1, p1, p2}, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-object p0
.end method

.method public setScaleRange(FF)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2
    .param p1, "minScale"    # F
    .param p2, "maxScale"    # F

    .prologue
    .line 242
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/ScaleInitializer;

    invoke-direct {v1, p1, p2}, Lcom/plattysoft/leonids/initializers/ScaleInitializer;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-object p0
.end method

.method public setSpeedByComponentsRange(FFFF)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 6
    .param p1, "speedMinX"    # F
    .param p2, "speedMaxX"    # F
    .param p3, "speedMinY"    # F
    .param p4, "speedMaxY"    # F

    .prologue
    .line 231
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;

    invoke-virtual {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v2

    invoke-virtual {p0, p2}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v3

    invoke-virtual {p0, p3}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v4

    invoke-virtual {p0, p4}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/plattysoft/leonids/initializers/SpeeddByComponentsInitializer;-><init>(FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-object p0
.end method

.method public setSpeedModuleAndAngleRange(FFII)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 4
    .param p1, "speedMin"    # F
    .param p2, "speedMax"    # F
    .param p3, "minAngle"    # I
    .param p4, "maxAngle"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;

    invoke-virtual {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v2

    invoke-virtual {p0, p2}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v3

    invoke-direct {v1, v2, v3, p3, p4}, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;-><init>(FFII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-object p0
.end method

.method public setSpeedRange(FF)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 6
    .param p1, "speedMin"    # F
    .param p2, "speedMax"    # F

    .prologue
    .line 221
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;

    invoke-virtual {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v2

    invoke-virtual {p0, p2}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x168

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/plattysoft/leonids/initializers/SpeeddModuleAndRangeInitializer;-><init>(FFII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-object p0
.end method

.method public setStartTime(I)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 273
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    .line 274
    return-object p0
.end method

.method public stopEmitting()V
    .locals 2

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    iput-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    .line 573
    return-void
.end method

.method public updateEmitPoint(II)V
    .locals 0
    .param p1, "emitterX"    # I
    .param p2, "emitterY"    # I

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->configureEmiter(II)V

    .line 403
    return-void
.end method
