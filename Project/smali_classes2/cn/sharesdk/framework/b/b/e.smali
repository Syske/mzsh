.class public Lcn/sharesdk/framework/b/b/e;
.super Lcn/sharesdk/framework/b/b/c;


# static fields
.field private static b:I

.field private static c:J


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/sharesdk/framework/b/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "[EXT]"

    return-object v0
.end method

.method protected a(J)V
    .locals 1

    sput-wide p1, Lcn/sharesdk/framework/b/b/e;->c:J

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcn/sharesdk/framework/b/a/e;->a(Landroid/content/Context;)Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    const-string v1, "insertExitEventCount"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->g(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/sharesdk/framework/b/b/e;->b:I

    const-string v1, "lastInsertExitEventTime"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->f(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcn/sharesdk/framework/b/b/e;->c:J

    invoke-super {p0, p1}, Lcn/sharesdk/framework/b/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcn/sharesdk/framework/b/b/c;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcn/sharesdk/framework/b/a/e;->a(Landroid/content/Context;)Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    const-string v1, "lastInsertExitEventTime"

    sget-wide v2, Lcn/sharesdk/framework/b/b/e;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "insertExitEventCount"

    sget v2, Lcn/sharesdk/framework/b/b/e;->b:I

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected d()J
    .locals 2

    sget v0, Lcn/sharesdk/framework/b/b/e;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected e()J
    .locals 2

    sget-wide v0, Lcn/sharesdk/framework/b/b/e;->c:J

    return-wide v0
.end method

.method protected f()V
    .locals 1

    sget v0, Lcn/sharesdk/framework/b/b/e;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/framework/b/b/e;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v2, 0x7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/framework/b/b/e;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/b/b/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/sharesdk/framework/b/b/e;->a:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
