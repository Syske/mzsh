.class Lcom/mob/commons/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mob/commons/g;


# direct methods
.method constructor <init>(Lcom/mob/commons/g;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/i;->a:Lcom/mob/commons/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/i;->a:Lcom/mob/commons/g;

    invoke-static {v0}, Lcom/mob/commons/g;->d(Lcom/mob/commons/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mob/commons/i;->a:Lcom/mob/commons/g;

    invoke-static {v1, v0}, Lcom/mob/commons/g;->a(Lcom/mob/commons/g;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/commons/i;->a:Lcom/mob/commons/g;

    invoke-static {v1, v0}, Lcom/mob/commons/g;->b(Lcom/mob/commons/g;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
