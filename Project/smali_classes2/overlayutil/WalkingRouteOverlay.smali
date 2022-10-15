.class public Loverlayutil/WalkingRouteOverlay;
.super Loverlayutil/OverlayManager;
.source "WalkingRouteOverlay.java"


# instance fields
.field private mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 1
    .param p1, "baiduMap"    # Lcom/baidu/mapapi/map/BaiduMap;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Loverlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 31
    return-void
.end method


# virtual methods
.method public getLineColor()I
    .locals 1

    .prologue
    .line 130
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

    .line 45
    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    if-nez v6, :cond_1

    .line 46
    const/4 v2, 0x0

    .line 118
    :cond_0
    return-object v2

    .line 49
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "overlayList":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/map/OverlayOptions;>;"
    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 51
    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 52
    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

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

    check-cast v4, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 53
    .local v4, "step":Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "index"

    iget-object v8, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 56
    new-instance v7, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v7}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 57
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 58
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getDirection()I

    move-result v8

    rsub-int v8, v8, 0x168

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 59
    invoke-virtual {v7, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 60
    invoke-virtual {v7, v9, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 61
    invoke-virtual {v7, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    const-string v8, "Icon_line_node.png"

    .line 63
    invoke-static {v8}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v8

    .line 62
    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 56
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_3
    iget-object v7, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 68
    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 69
    new-instance v7, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v7}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 70
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 71
    invoke-virtual {v7, v9, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 72
    invoke-virtual {v7, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    const-string v8, "Icon_line_node.png"

    .line 74
    invoke-static {v8}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v8

    .line 73
    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 69
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 80
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "step":Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;
    :cond_4
    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 81
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v7, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 82
    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 83
    invoke-virtual {p0}, Loverlayutil/WalkingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Loverlayutil/WalkingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 85
    invoke-virtual {v6, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 81
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_5
    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 89
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v7, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 91
    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 92
    invoke-virtual {p0}, Loverlayutil/WalkingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Loverlayutil/WalkingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 95
    invoke-virtual {v6, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 90
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_6
    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 100
    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    iget-object v6, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

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

    check-cast v4, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 103
    .restart local v4    # "step":Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getWayPoints()Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "watPoints":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    if-eqz v5, :cond_7

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    if-eqz v1, :cond_8

    .line 107
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_8
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    new-instance v6, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v6, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v8

    .line 111
    invoke-virtual {p0}, Loverlayutil/WalkingRouteOverlay;->getLineColor()I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Loverlayutil/WalkingRouteOverlay;->getLineColor()I

    move-result v6

    :goto_4
    invoke-virtual {v8, v6}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v6

    .line 110
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .restart local v1    # "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    goto :goto_3

    .line 83
    .end local v1    # "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    .end local v3    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    .end local v4    # "step":Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;
    .end local v5    # "watPoints":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    :cond_9
    const-string v6, "Icon_start.png"

    .line 85
    invoke-static {v6}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    goto/16 :goto_1

    .line 92
    :cond_a
    const-string v6, "Icon_end.png"

    .line 94
    invoke-static {v6}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    goto/16 :goto_2

    .line 111
    .restart local v1    # "lastStepLastPoint":Lcom/baidu/mapapi/model/LatLng;
    .restart local v3    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    .restart local v4    # "step":Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;
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
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/baidu/mapapi/map/Marker;

    .prologue
    .line 160
    iget-object v1, p0, Loverlayutil/WalkingRouteOverlay;->mOverlayList:Ljava/util/List;

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

    .line 161
    .local v0, "mMarker":Lcom/baidu/mapapi/map/Overlay;
    instance-of v2, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Loverlayutil/WalkingRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_0

    .line 167
    .end local v0    # "mMarker":Lcom/baidu/mapapi/map/Overlay;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .locals 1
    .param p1, "polyline"    # Lcom/baidu/mapapi/map/Polyline;

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public onRouteNodeClick(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 151
    iget-object v0, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 152
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "baidumapsdk"

    const-string v1, "WalkingRouteOverlay onRouteNodeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/WalkingRouteLine;)V
    .locals 0
    .param p1, "line"    # Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .prologue
    .line 40
    iput-object p1, p0, Loverlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 41
    return-void
.end method
