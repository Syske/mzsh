.class public Loverlayutil/BikingRouteOverlay;
.super Loverlayutil/OverlayManager;
.source "BikingRouteOverlay.java"


# instance fields
.field private mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 1
    .param p1, "baiduMap"    # Lcom/baidu/mapapi/map/BaiduMap;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Loverlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 34
    return-void
.end method


# virtual methods
.method public getLineColor()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public final getOverlayOptions()Ljava/util/List;
    .locals 13
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
    const/4 v12, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/16 v11, 0xa

    .line 48
    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    if-nez v6, :cond_1

    .line 49
    const/4 v2, 0x0

    .line 121
    :cond_0
    return-object v2

    .line 52
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "overlayList":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/map/OverlayOptions;>;"
    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 54
    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 55
    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;

    .line 56
    .local v4, "step":Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "index"

    iget-object v8, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 59
    new-instance v7, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v7}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 60
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 61
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->getDirection()I

    move-result v8

    rsub-int v8, v8, 0x168

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 62
    invoke-virtual {v7, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 63
    invoke-virtual {v7, v9, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 64
    invoke-virtual {v7, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    const-string v8, "Icon_line_node.png"

    .line 66
    invoke-static {v8}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v8

    .line 65
    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 59
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    iget-object v7, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 71
    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 72
    new-instance v7, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v7}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 73
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 74
    invoke-virtual {v7, v9, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    const-string v8, "Icon_line_node.png"

    .line 77
    invoke-static {v8}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v8

    .line 76
    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 72
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 83
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "step":Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;
    :cond_4
    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 84
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v7, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 85
    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 86
    invoke-virtual {p0}, Loverlayutil/BikingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Loverlayutil/BikingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 88
    invoke-virtual {v6, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 84
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_5
    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 92
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v7, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 94
    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 95
    invoke-virtual {p0}, Loverlayutil/BikingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Loverlayutil/BikingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 98
    invoke-virtual {v6, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 93
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_6
    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 103
    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    iget-object v6, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;

    .line 106
    .restart local v4    # "step":Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->getWayPoints()Ljava/util/List;

    move-result-object v5

    .line 107
    .local v5, "watPoints":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    if-eqz v5, :cond_7

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    if-eqz v1, :cond_8

    .line 110
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_8
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    new-instance v6, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v6, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v8

    .line 114
    invoke-virtual {p0}, Loverlayutil/BikingRouteOverlay;->getLineColor()I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Loverlayutil/BikingRouteOverlay;->getLineColor()I

    move-result v6

    :goto_4
    invoke-virtual {v8, v6}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v6

    .line 113
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .restart local v1    # "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    goto :goto_3

    .line 86
    .end local v1    # "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    .end local v3    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    .end local v4    # "step":Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;
    .end local v5    # "watPoints":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    :cond_9
    const-string v6, "Icon_start.png"

    .line 88
    invoke-static {v6}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    goto/16 :goto_1

    .line 95
    :cond_a
    const-string v6, "Icon_end.png"

    .line 97
    invoke-static {v6}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    goto/16 :goto_2

    .line 114
    .restart local v1    # "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    .restart local v3    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    .restart local v4    # "step":Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;
    .restart local v5    # "watPoints":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    :cond_b
    const/16 v6, 0xb2

    const/16 v9, 0x4e

    const/16 v10, 0xff

    invoke-static {v6, v12, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    goto :goto_4
.end method

.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/baidu/mapapi/map/Marker;

    .prologue
    .line 163
    iget-object v1, p0, Loverlayutil/BikingRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 164
    .local v0, "mMarker":Lcom/baidu/mapapi/map/Overlay;
    instance-of v2, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Loverlayutil/BikingRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_0

    .line 170
    .end local v0    # "mMarker":Lcom/baidu/mapapi/map/Overlay;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .locals 1
    .param p1, "polyline"    # Lcom/baidu/mapapi/map/Polyline;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public onRouteNodeClick(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 154
    iget-object v0, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 155
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "baidumapsdk"

    const-string v1, "BikingRouteOverlay onRouteNodeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/BikingRouteLine;)V
    .locals 0
    .param p1, "line"    # Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .prologue
    .line 43
    iput-object p1, p0, Loverlayutil/BikingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 44
    return-void
.end method
