.class Lcom/mob/commons/authorize/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mob/commons/MobProduct;

.field final synthetic d:Lcom/mob/commons/authorize/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/authorize/a;[Ljava/lang/String;Landroid/content/Context;Lcom/mob/commons/MobProduct;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/authorize/b;->d:Lcom/mob/commons/authorize/a;

    iput-object p2, p0, Lcom/mob/commons/authorize/b;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/commons/authorize/b;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/mob/commons/authorize/b;->c:Lcom/mob/commons/MobProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mob/commons/authorize/b;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mob/commons/authorize/b;->d:Lcom/mob/commons/authorize/a;

    iget-object v3, p0, Lcom/mob/commons/authorize/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/mob/commons/authorize/b;->c:Lcom/mob/commons/MobProduct;

    invoke-static {v2, v3, v4}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Landroid/content/Context;Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
