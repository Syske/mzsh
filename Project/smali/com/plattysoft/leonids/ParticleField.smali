.class Lcom/plattysoft/leonids/ParticleField;
.super Landroid/view/View;
.source "ParticleField.java"


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleField;->mParticles:Ljava/util/ArrayList;

    monitor-enter v2

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleField;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleField;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/plattysoft/leonids/Particle;

    invoke-virtual {v1, p1}, Lcom/plattysoft/leonids/Particle;->draw(Landroid/graphics/Canvas;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v2

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setParticles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/plattysoft/leonids/Particle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "particles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/plattysoft/leonids/Particle;>;"
    iput-object p1, p0, Lcom/plattysoft/leonids/ParticleField;->mParticles:Ljava/util/ArrayList;

    .line 28
    return-void
.end method
