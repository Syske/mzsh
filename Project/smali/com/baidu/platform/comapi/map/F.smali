.class Lcom/baidu/platform/comapi/map/F;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/E;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/E;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v3}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v3

    iget-wide v4, v3, Lcom/baidu/platform/comapi/map/e;->h:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/k;

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v11, :cond_4

    sget v1, Lcom/baidu/platform/comapi/map/E;->a:I

    sget v3, Lcom/baidu/platform/comapi/map/E;->b:I

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    sget v3, Lcom/baidu/platform/comapi/map/E;->a:I

    sget v5, Lcom/baidu/platform/comapi/map/E;->b:I

    mul-int/2addr v3, v5

    new-array v5, v3, [I

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v3}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v3}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    sget v6, Lcom/baidu/platform/comapi/map/E;->a:I

    sget v7, Lcom/baidu/platform/comapi/map/E;->b:I

    invoke-virtual {v3, v1, v6, v7}, Lcom/baidu/platform/comjni/map/basemap/a;->a([III)[I

    move-result-object v6

    move v1, v2

    :goto_1
    sget v3, Lcom/baidu/platform/comapi/map/E;->b:I

    if-ge v1, v3, :cond_3

    move v3, v2

    :goto_2
    sget v7, Lcom/baidu/platform/comapi/map/E;->a:I

    if-ge v3, v7, :cond_2

    sget v7, Lcom/baidu/platform/comapi/map/E;->a:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v3

    aget v7, v6, v7

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v7, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    const v10, -0xff0100

    and-int/2addr v7, v10

    or-int/2addr v7, v9

    or-int/2addr v7, v8

    sget v8, Lcom/baidu/platform/comapi/map/E;->b:I

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    sget v9, Lcom/baidu/platform/comapi/map/E;->a:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v3

    aput v7, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget v1, Lcom/baidu/platform/comapi/map/E;->a:I

    sget v3, Lcom/baidu/platform/comapi/map/E;->b:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v3, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/k;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/e;->A()V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/e;->i:Z

    if-nez v0, :cond_a

    sget v0, Lcom/baidu/platform/comapi/map/E;->b:I

    if-lez v0, :cond_a

    sget v0, Lcom/baidu/platform/comapi/map/E;->a:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/baidu/platform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iput-boolean v11, v0, Lcom/baidu/platform/comapi/map/e;->i:Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/k;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/k;->b()V

    goto :goto_4

    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/e;->K()V

    goto :goto_3

    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v11, :cond_9

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->b(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/l;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->b(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/l;->a()V

    goto :goto_3

    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->b(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/l;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->b(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/l;->a()V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/k;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/k;->a()V

    goto :goto_5

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/e;->l:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/e;->m:Z

    if-eqz v0, :cond_0

    :cond_c
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/k;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v2}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/D;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/map/k;->b(Lcom/baidu/platform/comapi/map/D;)V

    goto :goto_6

    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/k;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/k;->d()V

    goto :goto_7

    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/F;->a:Lcom/baidu/platform/comapi/map/E;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/k;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_10

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/map/k;->a(Z)V

    goto :goto_8

    :cond_10
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v11, :cond_f

    invoke-interface {v0, v11}, Lcom/baidu/platform/comapi/map/k;->a(Z)V

    goto :goto_8
.end method
