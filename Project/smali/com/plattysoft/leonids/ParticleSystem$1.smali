.class Lcom/plattysoft/leonids/ParticleSystem$1;
.super Ljava/util/TimerTask;
.source "ParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/plattysoft/leonids/ParticleSystem;->startEmiting(I)V
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
    .line 360
    iput-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem$1;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem$1;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem$1;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    invoke-static {v1}, Lcom/plattysoft/leonids/ParticleSystem;->access$000(Lcom/plattysoft/leonids/ParticleSystem;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->access$100(Lcom/plattysoft/leonids/ParticleSystem;J)V

    .line 364
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem$1;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->access$014(Lcom/plattysoft/leonids/ParticleSystem;J)J

    .line 365
    return-void
.end method
