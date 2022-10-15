.class Lcom/plattysoft/leonids/ParticleSystem$3;
.super Ljava/lang/Object;
.source "ParticleSystem.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/plattysoft/leonids/ParticleSystem;->startAnimator(Landroid/view/animation/Interpolator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/plattysoft/leonids/ParticleSystem;


# direct methods
.method constructor <init>(Lcom/plattysoft/leonids/ParticleSystem;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem$3;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem$3;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    invoke-static {v0}, Lcom/plattysoft/leonids/ParticleSystem;->access$200(Lcom/plattysoft/leonids/ParticleSystem;)V

    .line 463
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem$3;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    invoke-static {v0}, Lcom/plattysoft/leonids/ParticleSystem;->access$200(Lcom/plattysoft/leonids/ParticleSystem;)V

    .line 458
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 453
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 450
    return-void
.end method
