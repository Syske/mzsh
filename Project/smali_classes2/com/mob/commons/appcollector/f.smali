.class Lcom/mob/commons/appcollector/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mob/commons/appcollector/e;


# direct methods
.method constructor <init>(Lcom/mob/commons/appcollector/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/appcollector/f;->a:Lcom/mob/commons/appcollector/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/appcollector/f;->a:Lcom/mob/commons/appcollector/e;

    iget-object v0, v0, Lcom/mob/commons/appcollector/e;->a:Lcom/mob/commons/appcollector/RuntimeCollector;

    invoke-static {v0}, Lcom/mob/commons/appcollector/RuntimeCollector;->b(Lcom/mob/commons/appcollector/RuntimeCollector;)V

    return-void
.end method
