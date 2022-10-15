.class public final Lcom/mob/commons/authorize/DeviceAuthorizer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorize(Landroid/content/Context;Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/mob/commons/f;->a(Landroid/content/Context;)Lcom/mob/commons/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/f;->a(Lcom/mob/commons/MobProduct;)V

    new-instance v0, Lcom/mob/commons/authorize/a;

    invoke-direct {v0}, Lcom/mob/commons/authorize/a;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/mob/commons/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/mob/commons/authorize/a;->a(Landroid/content/Context;Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/mob/commons/authorize/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static authorize(Landroid/content/Context;Lcom/mob/commons/authorize/MobProduct;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/mob/commons/authorize/c;

    invoke-direct {v0, p1}, Lcom/mob/commons/authorize/c;-><init>(Lcom/mob/commons/authorize/MobProduct;)V

    invoke-static {p0, v0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Landroid/content/Context;Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
