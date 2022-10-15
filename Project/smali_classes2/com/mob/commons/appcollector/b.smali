.class Lcom/mob/commons/appcollector/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mob/commons/appcollector/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/appcollector/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/a;

    iget-object v0, v0, Lcom/mob/commons/appcollector/a;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-static {v0}, Lcom/mob/commons/appcollector/PackageCollector;->a(Lcom/mob/commons/appcollector/PackageCollector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/a;

    iget-object v0, v0, Lcom/mob/commons/appcollector/a;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-static {v0}, Lcom/mob/commons/appcollector/PackageCollector;->b(Lcom/mob/commons/appcollector/PackageCollector;)V

    :cond_0
    iget-object v0, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/a;

    iget-object v0, v0, Lcom/mob/commons/appcollector/a;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-static {v0}, Lcom/mob/commons/appcollector/PackageCollector;->c(Lcom/mob/commons/appcollector/PackageCollector;)V

    iget-object v0, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/a;

    invoke-static {v0}, Lcom/mob/commons/appcollector/a;->a(Lcom/mob/commons/appcollector/a;)V

    return-void
.end method
