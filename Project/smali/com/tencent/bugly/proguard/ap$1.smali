.class Lcom/tencent/bugly/proguard/ap$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ap;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/tencent/bugly/proguard/ap;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ap;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ap$1;->b:Lcom/tencent/bugly/proguard/ap;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ap$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 722
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$1;->b:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->a(Lcom/tencent/bugly/proguard/ap;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap$1;->b:Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->b(Lcom/tencent/bugly/proguard/ap;)I

    .line 725
    monitor-exit v1

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
