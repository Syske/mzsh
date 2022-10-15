.class public Loverlayutil/PoiOverlay;
.super Loverlayutil/OverlayManager;
.source "PoiOverlay.java"


# static fields
.field private static final MAX_POI_SIZE:I = 0xa


# instance fields
.field private mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 1
    .param p1, "baiduMap"    # Lcom/baidu/mapapi/map/BaiduMap;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Loverlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Loverlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    .line 33
    return-void
.end method


# virtual methods
.method public final getOverlayOptions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v4, p0, Loverlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loverlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 66
    :cond_1
    return-object v2

    .line 50
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "markerList":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/map/OverlayOptions;>;"
    const/4 v3, 0x0

    .line 52
    .local v3, "markerSize":I
    const/4 v1, 0x0

    .line 53
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Loverlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    .line 52
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 54
    iget-object v4, p0, Loverlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v4, v4, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    if-nez v4, :cond_3

    .line 53
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "index"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon_mark"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v5}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    iget-object v4, p0, Loverlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    .line 63
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v4, v4, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 60
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getPoiResult()Lcom/baidu/mapapi/search/poi/PoiResult;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Loverlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lcom/baidu/mapapi/map/Marker;

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Loverlayutil/PoiOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Loverlayutil/PoiOverlay;->onPoiClick(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onPoiClick(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .locals 1
    .param p1, "polyline"    # Lcom/baidu/mapapi/map/Polyline;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/poi/PoiResult;)V
    .locals 0
    .param p1, "poiResult"    # Lcom/baidu/mapapi/search/poi/PoiResult;

    .prologue
    .line 42
    iput-object p1, p0, Loverlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    .line 43
    return-void
.end method
