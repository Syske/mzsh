.class public Lcom/baidu/mapapi/map/offline/MKOfflineMap;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_DOWNLOAD_UPDATE:I = 0x0

.field public static final TYPE_NEW_OFFLINE:I = 0x6

.field public static final TYPE_VER_UPDATE:I = 0x4

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/baidu/platform/comapi/map/t;

.field private c:Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/offline/MKOfflineMap;)Lcom/baidu/platform/comapi/map/t;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/offline/MKOfflineMap;)Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->c:Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/t;->d(I)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/t;->b(Lcom/baidu/platform/comapi/map/x;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->b()V

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public getAllUpdateInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/w;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/w;->a()Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getUpdatElementFromLocalMapElement(Lcom/baidu/platform/comapi/map/v;)Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getHotCityList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/s;

    invoke-static {v0}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getSearchRecordFromLocalCityInfo(Lcom/baidu/platform/comapi/map/s;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getOfflineCityList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/s;

    invoke-static {v0}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getSearchRecordFromLocalCityInfo(Lcom/baidu/platform/comapi/map/s;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getUpdateInfo(I)Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->g(I)Lcom/baidu/platform/comapi/map/w;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/w;->a()Lcom/baidu/platform/comapi/map/v;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getUpdatElementFromLocalMapElement(Lcom/baidu/platform/comapi/map/v;)Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;

    move-result-object v0

    goto :goto_0
.end method

.method public importOfflineData()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->importOfflineData(Z)I

    move-result v0

    return v0
.end method

.method public importOfflineData(Z)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/t;->e()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/baidu/platform/comapi/map/t;->a(ZZ)Z

    iget-object v2, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/t;->e()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    sub-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public init(Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;)Z
    .locals 2

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    invoke-static {}, Lcom/baidu/platform/comapi/map/t;->a()Lcom/baidu/platform/comapi/map/t;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    new-instance v1, Lcom/baidu/mapapi/map/offline/a;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/offline/a;-><init>(Lcom/baidu/mapapi/map/offline/MKOfflineMap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/t;->a(Lcom/baidu/platform/comapi/map/x;)V

    iput-object p1, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->c:Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause(I)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->c(I)Z

    move-result v0

    return v0
.end method

.method public remove(I)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->e(I)Z

    move-result v0

    return v0
.end method

.method public searchCity(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/s;

    invoke-static {v0}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getSearchRecordFromLocalCityInfo(Lcom/baidu/platform/comapi/map/s;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public start(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/w;

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/v;

    iget v3, v3, Lcom/baidu/platform/comapi/map/v;->a:I

    if-ne v3, p1, :cond_1

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/v;

    iget-boolean v2, v2, Lcom/baidu/platform/comapi/map/v;->j:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/v;

    iget v2, v2, Lcom/baidu/platform/comapi/map/v;->l:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/v;

    iget v2, v2, Lcom/baidu/platform/comapi/map/v;->l:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/v;

    iget v0, v0, Lcom/baidu/platform/comapi/map/v;->l:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->b(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public update(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/t;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/w;

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/v;

    iget v3, v3, Lcom/baidu/platform/comapi/map/v;->a:I

    if-ne v3, p1, :cond_1

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/v;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/v;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/platform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/t;->f(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
