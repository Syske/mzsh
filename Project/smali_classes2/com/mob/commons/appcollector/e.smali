.class Lcom/mob/commons/appcollector/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/mob/commons/appcollector/RuntimeCollector;


# direct methods
.method constructor <init>(Lcom/mob/commons/appcollector/RuntimeCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/appcollector/e;->a:Lcom/mob/commons/appcollector/RuntimeCollector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/commons/appcollector/e;->a:Lcom/mob/commons/appcollector/RuntimeCollector;

    invoke-static {v1}, Lcom/mob/commons/appcollector/RuntimeCollector;->a(Lcom/mob/commons/appcollector/RuntimeCollector;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comm/locks/.rc_lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mob/commons/appcollector/f;

    invoke-direct {v1, p0}, Lcom/mob/commons/appcollector/f;-><init>(Lcom/mob/commons/appcollector/e;)V

    invoke-static {v0, v1}, Lcom/mob/commons/j;->a(Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method
