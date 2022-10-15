.class public Loverlayutil/TransitRouteOverlay;
.super Loverlayutil/OverlayManager;
.source "TransitRouteOverlay.java"


# instance fields
.field private mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 1
    .param p1, "baiduMap"    # Lcom/baidu/mapapi/map/BaiduMap;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Loverlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 36
    return-void
.end method

.method private getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 2
    .param p1, "step"    # Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .prologue
    .line 111
    sget-object v0, Loverlayutil/TransitRouteOverlay$1;->$SwitchMap$com$baidu$mapapi$search$route$TransitRouteLine$TransitStep$TransitRouteStepType:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getStepType()Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    const-string v0, "Icon_bus_station.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_1
    const-string v0, "Icon_subway_station.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_2
    const-string v0, "Icon_walk_route.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getLineColor()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public final getOverlayOptions()Ljava/util/List;
    .locals 11
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
    const/16 v10, 0xb2

    const/4 v9, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/16 v7, 0xa

    .line 41
    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    if-nez v4, :cond_1

    .line 42
    const/4 v2, 0x0

    .line 107
    :cond_0
    return-object v2

    .line 45
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "overlayOptionses":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/map/OverlayOptions;>;"
    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 48
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 50
    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 51
    .local v3, "step":Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "index"

    iget-object v6, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 54
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 55
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 57
    invoke-direct {p0, v3}, Loverlayutil/TransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 54
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3
    iget-object v5, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 61
    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 62
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 63
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 64
    invoke-virtual {v5, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 65
    invoke-direct {p0, v3}, Loverlayutil/TransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 62
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 70
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "step":Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    :cond_4
    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 71
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v5, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 72
    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 73
    invoke-virtual {p0}, Loverlayutil/TransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Loverlayutil/TransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 71
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_5
    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 78
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v5, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 80
    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 81
    invoke-virtual {p0}, Loverlayutil/TransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Loverlayutil/TransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 84
    invoke-virtual {v4, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 79
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_6
    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 88
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 90
    iget-object v4, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 91
    .restart local v3    # "step":Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "color":I
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getStepType()Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    move-result-object v5

    sget-object v6, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->WAKLING:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    if-eq v5, v6, :cond_b

    .line 97
    invoke-virtual {p0}, Loverlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Loverlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v1

    .line 102
    :goto_4
    new-instance v5, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    .line 103
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v5

    .line 104
    invoke-virtual {v5, v9}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v5

    .line 102
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 73
    .end local v1    # "color":I
    .end local v3    # "step":Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    :cond_8
    const-string v4, "Icon_start.png"

    .line 75
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    goto/16 :goto_1

    .line 81
    :cond_9
    const-string v4, "Icon_end.png"

    .line 83
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    goto :goto_2

    .line 97
    .restart local v1    # "color":I
    .restart local v3    # "step":Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    :cond_a
    const/16 v5, 0x4e

    const/16 v6, 0xff

    invoke-static {v10, v9, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_4

    .line 100
    :cond_b
    invoke-virtual {p0}, Loverlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Loverlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v1

    :goto_5
    goto :goto_4

    :cond_c
    const/16 v5, 0x58

    const/16 v6, 0xd0

    invoke-static {v10, v5, v6, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_5
.end method

.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/baidu/mapapi/map/Marker;

    .prologue
    .line 173
    iget-object v1, p0, Loverlayutil/TransitRouteOverlay;->mOverlayList:Ljava/util/List;

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

    .line 174
    .local v0, "mMarker":Lcom/baidu/mapapi/map/Overlay;
    instance-of v2, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Loverlayutil/TransitRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_0

    .line 180
    .end local v0    # "mMarker":Lcom/baidu/mapapi/map/Overlay;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .locals 1
    .param p1, "polyline"    # Lcom/baidu/mapapi/map/Polyline;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onRouteNodeClick(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 164
    iget-object v0, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 165
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "baidumapsdk"

    const-string v1, "TransitRouteOverlay onRouteNodeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/TransitRouteLine;)V
    .locals 0
    .param p1, "routeOverlay"    # Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .prologue
    .line 130
    iput-object p1, p0, Loverlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 131
    return-void
.end method
