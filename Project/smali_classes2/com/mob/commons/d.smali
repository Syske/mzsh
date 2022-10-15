.class final Lcom/mob/commons/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mob/commons/d;->a:Landroid/content/Context;

    new-instance v1, Lcom/mob/commons/e;

    invoke-direct {v1, p0}, Lcom/mob/commons/e;-><init>(Lcom/mob/commons/d;)V

    invoke-static {v0, v2, v1}, Lcom/mob/commons/a;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    invoke-static {v2}, Lcom/mob/commons/a;->a(Z)Z

    return-void
.end method
