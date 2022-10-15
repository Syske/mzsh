.class public Loverlayutil/DrivingRouteOverlay;
.super Loverlayutil/OverlayManager;
.source "DrivingRouteOverlay.java"


# instance fields
.field focus:Z

.field private mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 1
    .param p1, "baiduMap"    # Lcom/baidu/mapapi/map/BaiduMap;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Loverlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Loverlayutil/DrivingRouteOverlay;->focus:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getCustomTextureList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/mapapi/map/BitmapDescriptor;>;"
    const-string v1, "Icon_road_blue_arrow.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v1, "Icon_road_green_arrow.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v1, "Icon_road_yellow_arrow.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v1, "Icon_road_red_arrow.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v1, "Icon_road_nofocus.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public final getOverlayOptions()Ljava/util/List;
    .locals 20
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
    .line 43
    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    if-nez v15, :cond_1

    .line 44
    const/4 v8, 0x0

    .line 144
    :cond_0
    :goto_0
    return-object v8

    .line 47
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v8, "overlayOptionses":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/map/OverlayOptions;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 50
    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 52
    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    .line 53
    .local v10, "step":Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v3, "b":Landroid/os/Bundle;
    const-string v16, "index"

    move-object/from16 v0, p0

    iget-object v0, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v10}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 56
    new-instance v16, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct/range {v16 .. v16}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 57
    invoke-virtual {v10}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 58
    invoke-virtual/range {v16 .. v18}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    const/16 v17, 0xa

    .line 59
    invoke-virtual/range {v16 .. v17}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    .line 60
    invoke-virtual {v10}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getDirection()I

    move-result v17

    move/from16 v0, v17

    rsub-int v0, v0, 0x168

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    .line 61
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    const-string v17, "Icon_line_node.png"

    .line 63
    invoke-static/range {v17 .. v17}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v17

    .line 62
    invoke-virtual/range {v16 .. v17}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    .line 56
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    move-object/from16 v17, v0

    .line 67
    invoke-virtual/range {v17 .. v17}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-virtual {v10}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 68
    new-instance v16, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct/range {v16 .. v16}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 69
    invoke-virtual {v10}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 70
    invoke-virtual/range {v16 .. v18}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    const/16 v17, 0xa

    .line 71
    invoke-virtual/range {v16 .. v17}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    const-string v17, "Icon_line_node.png"

    .line 73
    invoke-static/range {v17 .. v17}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v17

    .line 72
    invoke-virtual/range {v16 .. v17}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    .line 68
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 79
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v10    # "step":Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 80
    new-instance v15, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v15}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    move-object/from16 v16, v0

    .line 81
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    .line 82
    invoke-virtual/range {p0 .. p0}, Loverlayutil/DrivingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Loverlayutil/DrivingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v15

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v15

    const/16 v16, 0xa

    .line 84
    invoke-virtual/range {v15 .. v16}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v15

    .line 80
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 87
    new-instance v15, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v15}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    move-object/from16 v16, v0

    .line 89
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v16

    .line 90
    invoke-virtual/range {p0 .. p0}, Loverlayutil/DrivingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Loverlayutil/DrivingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v15

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v15

    const/16 v16, 0xa

    .line 93
    invoke-virtual/range {v15 .. v16}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v15

    .line 88
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 97
    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v15, v0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v12

    .line 100
    .local v12, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 103
    .local v11, "stepNum":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v9, "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v14, "traffics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 106
    .local v13, "totalTraffic":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v11, :cond_b

    .line 107
    add-int/lit8 v15, v11, -0x1

    if-ne v4, v15, :cond_9

    .line 108
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :goto_5
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v13, v15

    .line 114
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v15

    array-length v15, v15

    if-lez v15, :cond_a

    .line 115
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v15

    array-length v15, v15

    if-ge v6, v15, :cond_a

    .line 116
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v15

    aget v15, v15, v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 82
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    .end local v11    # "stepNum":I
    .end local v12    # "steps":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;>;"
    .end local v13    # "totalTraffic":I
    .end local v14    # "traffics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    const-string v15, "Icon_start.png"

    .line 84
    invoke-static {v15}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v15

    goto/16 :goto_2

    .line 90
    :cond_8
    const-string v15, "Icon_end.png"

    .line 92
    invoke-static {v15}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v15

    goto/16 :goto_3

    .line 110
    .restart local v4    # "i":I
    .restart local v9    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    .restart local v11    # "stepNum":I
    .restart local v12    # "steps":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;>;"
    .restart local v13    # "totalTraffic":I
    .restart local v14    # "traffics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 106
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 131
    :cond_b
    const/4 v5, 0x0

    .line 133
    .local v5, "isDotLine":Z
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_c

    .line 134
    const/4 v5, 0x1

    .line 136
    :cond_c
    new-instance v15, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v15}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v15, v9}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/baidu/mapapi/map/PolylineOptions;->textureIndex(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v15

    const/16 v16, 0x7

    .line 137
    invoke-virtual/range {v15 .. v16}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->dottedLine(Z)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/baidu/mapapi/map/PolylineOptions;->focus(Z)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v16

    .line 138
    invoke-virtual/range {p0 .. p0}, Loverlayutil/DrivingRouteOverlay;->getLineColor()I

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Loverlayutil/DrivingRouteOverlay;->getLineColor()I

    move-result v15

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v7

    .line 139
    .local v7, "option":Lcom/baidu/mapapi/map/PolylineOptions;
    if-eqz v5, :cond_d

    .line 140
    invoke-virtual/range {p0 .. p0}, Loverlayutil/DrivingRouteOverlay;->getCustomTextureList()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/baidu/mapapi/map/PolylineOptions;->customTextureList(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    .line 142
    :cond_d
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 138
    .end local v7    # "option":Lcom/baidu/mapapi/map/PolylineOptions;
    :cond_e
    const/16 v15, 0xb2

    const/16 v17, 0x0

    const/16 v18, 0x4e

    const/16 v19, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    goto :goto_7
.end method

.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/baidu/mapapi/map/Marker;

    .prologue
    .line 208
    iget-object v1, p0, Loverlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

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

    .line 209
    .local v0, "mMarker":Lcom/baidu/mapapi/map/Overlay;
    instance-of v2, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Loverlayutil/DrivingRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_0

    .line 215
    .end local v0    # "mMarker":Lcom/baidu/mapapi/map/Overlay;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .locals 4
    .param p1, "polyline"    # Lcom/baidu/mapapi/map/Polyline;

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "flag":Z
    iget-object v2, p0, Loverlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Overlay;

    .line 222
    .local v1, "mPolyline":Lcom/baidu/mapapi/map/Overlay;
    instance-of v3, v1, Lcom/baidu/mapapi/map/Polyline;

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 228
    .end local v1    # "mPolyline":Lcom/baidu/mapapi/map/Overlay;
    :cond_1
    invoke-virtual {p0, v0}, Loverlayutil/DrivingRouteOverlay;->setFocus(Z)V

    .line 229
    const/4 v2, 0x1

    return v2
.end method

.method public onRouteNodeClick(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 199
    iget-object v0, p0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 200
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "baidumapsdk"

    const-string v1, "DrivingRouteOverlay onRouteNodeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)V
    .locals 0
    .param p1, "routeLine"    # Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .prologue
    .line 154
    iput-object p1, p0, Loverlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 155
    return-void
.end method

.method public setFocus(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Loverlayutil/DrivingRouteOverlay;->focus:Z

    .line 234
    iget-object v1, p0, Loverlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 235
    .local v0, "mPolyline":Lcom/baidu/mapapi/map/Overlay;
    instance-of v2, v0, Lcom/baidu/mapapi/map/Polyline;

    if-eqz v2, :cond_0

    .line 237
    check-cast v0, Lcom/baidu/mapapi/map/Polyline;

    .end local v0    # "mPolyline":Lcom/baidu/mapapi/map/Overlay;
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->setFocus(Z)V

    .line 243
    :cond_1
    return-void
.end method
