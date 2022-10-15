.class Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;
.super Ljava/lang/Object;
.source "SportRecordActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->calZoomSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 30

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    .line 326
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v18, "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    .line 329
    .local v9, "lastPoint":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    new-instance v21, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getY()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getX()Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 334
    .end local v9    # "lastPoint":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    :cond_0
    const/4 v12, 0x0

    .line 335
    .local v12, "maxLat":Ljava/lang/Double;
    const/4 v14, 0x0

    .line 336
    .local v14, "minLat":Ljava/lang/Double;
    const/4 v15, 0x0

    .line 337
    .local v15, "minLog":Ljava/lang/Double;
    const/4 v13, 0x0

    .line 338
    .local v13, "maxLog":Ljava/lang/Double;
    const/4 v8, 0x0

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_9

    .line 339
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    .line 341
    .local v11, "loopItem":Lcom/baidu/mapapi/model/LatLng;
    if-eqz v12, :cond_1

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v24, v0

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    cmpl-double v21, v24, v26

    if-lez v21, :cond_2

    .line 342
    :cond_1
    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 344
    :cond_2
    if-eqz v14, :cond_3

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v24, v0

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    cmpg-double v21, v24, v26

    if-gez v21, :cond_4

    .line 345
    :cond_3
    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 347
    :cond_4
    if-eqz v15, :cond_5

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    cmpg-double v21, v24, v26

    if-gez v21, :cond_6

    .line 348
    :cond_5
    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .line 350
    :cond_6
    if-eqz v13, :cond_7

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    cmpl-double v21, v24, v26

    if-lez v21, :cond_8

    .line 351
    :cond_7
    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 338
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 358
    .end local v11    # "loopItem":Lcom/baidu/mapapi/model/LatLng;
    :cond_9
    new-instance v16, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 359
    .local v16, "northeast":Lcom/baidu/mapapi/model/LatLng;
    new-instance v19, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 360
    .local v19, "southwest":Lcom/baidu/mapapi/model/LatLng;
    new-instance v21, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct/range {v21 .. v21}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object v21

    .line 361
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v6

    .line 362
    .local v6, "bounds":Lcom/baidu/mapapi/model/LatLngBounds;
    invoke-static {v6}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v20

    .line 363
    .local v20, "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 370
    .local v22, "zoomLevel":D
    new-instance v10, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v24, v24, v26

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    add-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 371
    .local v10, "lls":Lcom/baidu/mapapi/model/LatLng;
    new-instance v7, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v7}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 372
    .local v7, "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    invoke-virtual {v7, v10}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v21

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v24, v22, v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v21

    invoke-virtual {v7}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 375
    new-instance v21, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct/range {v21 .. v21}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    const/16 v24, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v21

    const v24, -0x559e3026

    .line 376
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v17

    .line 377
    .local v17, "ooPolyline":Lcom/baidu/mapapi/map/OverlayOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v21

    check-cast v21, Lcom/baidu/mapapi/map/Polyline;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->mBaiPolyline:Lcom/baidu/mapapi/map/Polyline;

    .line 382
    .end local v6    # "bounds":Lcom/baidu/mapapi/model/LatLngBounds;
    .end local v7    # "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    .end local v8    # "i":I
    .end local v10    # "lls":Lcom/baidu/mapapi/model/LatLng;
    .end local v12    # "maxLat":Ljava/lang/Double;
    .end local v13    # "maxLog":Ljava/lang/Double;
    .end local v14    # "minLat":Ljava/lang/Double;
    .end local v15    # "minLog":Ljava/lang/Double;
    .end local v16    # "northeast":Lcom/baidu/mapapi/model/LatLng;
    .end local v17    # "ooPolyline":Lcom/baidu/mapapi/map/OverlayOptions;
    .end local v18    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    .end local v19    # "southwest":Lcom/baidu/mapapi/model/LatLng;
    .end local v20    # "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    .end local v22    # "zoomLevel":D
    :cond_a
    return-void
.end method
