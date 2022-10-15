.class Lcom/mob/commons/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mob/commons/d;


# direct methods
.method constructor <init>(Lcom/mob/commons/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/e;->a:Lcom/mob/commons/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/e;->a:Lcom/mob/commons/d;

    iget-object v0, v0, Lcom/mob/commons/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mob/commons/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mob/commons/e;->a:Lcom/mob/commons/d;

    iget-object v0, v0, Lcom/mob/commons/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->q(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
