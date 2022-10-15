.class public Loverlayutil/BusLineOverlay;
.super Loverlayutil/OverlayManager;
.source "BusLineOverlay.java"


# instance fields
.field private mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 1
    .param p1, "baiduMap"    # Lcom/baidu/mapapi/map/BaiduMap;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Loverlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Loverlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    .line 34
    return-void
.end method


# virtual methods
.method public final getOverlayOptions()Ljava/util/List;
    .locals 10
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
    const/16 v9, 0xa

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 49
    iget-object v4, p0, Loverlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loverlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getStations()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 74
    :cond_1
    :goto_0
    return-object v0

    .line 52
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "overlayOptionses":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/map/OverlayOptions;>;"
    iget-object v4, p0, Loverlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getStations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStation;

    .line 54
    .local v2, "station":Lcom/baidu/mapapi/search/busline/BusLineResult$BusStation;
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 55
    invoke-virtual {v2}, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStation;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 57
    invoke-virtual {v5, v7, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    const-string v6, "Icon_bus_station.png"

    .line 59
    invoke-static {v6}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 54
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    .end local v2    # "station":Lcom/baidu/mapapi/search/busline/BusLineResult$BusStation;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    iget-object v4, p0, Loverlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getSteps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStep;

    .line 64
    .local v3, "step":Lcom/baidu/mapapi/search/busline/BusLineResult$BusStep;
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStep;->getWayPoints()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 65
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStep;->getWayPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 68
    .end local v3    # "step":Lcom/baidu/mapapi/search/busline/BusLineResult$BusStep;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 69
    new-instance v4, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    .line 70
    invoke-virtual {v4, v9}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    const/16 v5, 0xb2

    const/16 v6, 0x4e

    const/16 v7, 0xff

    .line 71
    invoke-static {v5, v8, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onBusStationClick(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 87
    iget-object v0, p0, Loverlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getStations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loverlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    .line 88
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getStations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "baidumapsdk"

    const-string v1, "BusLineOverlay onBusStationClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lcom/baidu/mapapi/map/Marker;

    .prologue
    .line 95
    iget-object v0, p0, Loverlayutil/BusLineOverlay;->mOverlayList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Loverlayutil/BusLineOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Loverlayutil/BusLineOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Loverlayutil/BusLineOverlay;->onBusStationClick(I)Z

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .locals 1
    .param p1, "polyline"    # Lcom/baidu/mapapi/map/Polyline;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/busline/BusLineResult;)V
    .locals 0
    .param p1, "result"    # Lcom/baidu/mapapi/search/busline/BusLineResult;

    .prologue
    .line 43
    iput-object p1, p0, Loverlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    .line 44
    return-void
.end method
