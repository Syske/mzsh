.class public Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;
.super Ljava/lang/Object;
.source "RunInMapActivity.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListenner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 26
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 285
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v10

    .line 293
    .local v10, "latitude":D
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v14

    .line 295
    .local v14, "longitude":D
    const-wide/16 v20, 0x0

    sub-double v20, v10, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v19, v20, v22

    if-gez v19, :cond_2

    const-wide/16 v20, 0x0

    sub-double v20, v14, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v19, v20, v22

    if-gez v19, :cond_2

    .line 296
    const-string/jumbo v19, "\u5f53\u524d\u67e5\u8be2\u65e0\u8f68\u8ff9\u70b9"

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getSatelliteNumber()I

    move-result v9

    .line 303
    .local v9, "gpsStrength":I
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v8

    .line 307
    .local v8, "gpsAccuracy":F
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v19

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 308
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    .line 309
    const-string v19, "gpsStrength low ,return"

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v19

    const/16 v20, 0xa1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v18

    .line 318
    .local v18, "type":Ljava/lang/String;
    const-string/jumbo v19, "wf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 320
    const/high16 v19, 0x41c00000    # 24.0f

    cmpl-float v19, v8, v19

    if-lez v19, :cond_5

    .line 321
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "wifi radius to big ,return\uff01 gpsAccuracy="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :cond_4
    const/high16 v19, 0x43520000    # 210.0f

    cmpl-float v19, v8, v19

    if-lez v19, :cond_5

    .line 327
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "wifi radius to big ,return\uff01 gpsAccuracy="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    .end local v18    # "type":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->isFirstLoc:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->isFirstLoc:Z

    .line 336
    new-instance v12, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v20

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 339
    .local v12, "ll":Lcom/baidu/mapapi/model/LatLng;
    new-instance v6, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 341
    .local v6, "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    invoke-virtual {v6, v12}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v19

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v19 .. v20}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    move-object/from16 v19, v0

    invoke-virtual {v6}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 343
    const-string v19, "location.getLatitude()"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\u7ecf\u7eac,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v6    # "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    .end local v12    # "ll":Lcom/baidu/mapapi/model/LatLng;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/baidu/mapapi/map/MapView;->setVisibility(I)V

    .line 346
    new-instance v19, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct/range {v19 .. v19}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->accuracy(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v19

    const/high16 v20, 0x42c80000    # 100.0f

    .line 349
    invoke-virtual/range {v19 .. v20}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->direction(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v19

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v13

    .line 351
    .local v13, "locData":Lcom/baidu/mapapi/map/MyLocationData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_7

    .line 359
    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v20

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 362
    .local v7, "cenpt":Lcom/baidu/mapapi/model/LatLng;
    new-instance v19, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct/range {v19 .. v19}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 363
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v19

    const/high16 v20, 0x41900000    # 18.0f

    .line 364
    invoke-virtual/range {v19 .. v20}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v19

    .line 365
    invoke-virtual/range {v19 .. v19}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v16

    .line 369
    .local v16, "mMapStatus":Lcom/baidu/mapapi/map/MapStatus;
    invoke-static/range {v16 .. v16}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v17

    .line 371
    .local v17, "mMapStatusUpdate":Lcom/baidu/mapapi/map/MapStatusUpdate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 375
    .end local v7    # "cenpt":Lcom/baidu/mapapi/model/LatLng;
    .end local v16    # "mMapStatus":Lcom/baidu/mapapi/map/MapStatus;
    .end local v17    # "mMapStatusUpdate":Lcom/baidu/mapapi/map/MapStatusUpdate;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Ljava/util/List;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Ljava/util/List;

    move-result-object v19

    new-instance v20, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    goto/16 :goto_0
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .param p1, "poiLocation"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 387
    return-void
.end method
