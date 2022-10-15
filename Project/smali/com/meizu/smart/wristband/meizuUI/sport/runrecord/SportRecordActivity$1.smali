.class Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;
.super Ljava/lang/Object;
.source "SportRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->baiduPoint()V
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
    .line 169
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 173
    const-string v4, "locations"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v6}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    .line 176
    .local v20, "locationZx":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    const-string v4, "locationZx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getY()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "========"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getX()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v4, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    const/high16 v6, 0x42c80000    # 100.0f

    .line 180
    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->direction(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getY()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v4

    .line 181
    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getX()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v19

    .line 185
    .local v19, "locData":Lcom/baidu/mapapi/map/MyLocationData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/MapView;->showZoomControls(Z)V

    .line 188
    new-instance v18, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getY()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v8, v4

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getX()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v28, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 189
    .local v18, "lls":Lcom/baidu/mapapi/model/LatLng;
    new-instance v14, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v14}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 190
    .local v14, "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v4

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    invoke-virtual {v14}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 193
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v23, "myPoints":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;

    move-result-object v4

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    .line 196
    .local v17, "lastPoint":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getY()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getX()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v0, v6

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-direct {v4, v8, v9, v0, v1}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 199
    .end local v17    # "lastPoint":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->optimizePoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v23

    .line 204
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_1

    .line 207
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/baidu/mapapi/model/LatLng;

    .line 209
    .local v26, "point1":Lcom/baidu/mapapi/model/LatLng;
    const v4, 0x7f0201ca

    .line 210
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v12

    .line 211
    .local v12, "bitmap1":Lcom/baidu/mapapi/map/BitmapDescriptor;
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 212
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 213
    invoke-virtual {v4, v12}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v24

    .line 214
    .local v24, "option1":Lcom/baidu/mapapi/map/OverlayOptions;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 217
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/baidu/mapapi/model/LatLng;

    .line 219
    .local v27, "point2":Lcom/baidu/mapapi/model/LatLng;
    const v4, 0x7f0201c9

    .line 220
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v13

    .line 222
    .local v13, "bitmap2":Lcom/baidu/mapapi/map/BitmapDescriptor;
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 223
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 224
    invoke-virtual {v4, v13}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v25

    .line 226
    .local v25, "option2":Lcom/baidu/mapapi/map/OverlayOptions;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 228
    .end local v12    # "bitmap1":Lcom/baidu/mapapi/map/BitmapDescriptor;
    .end local v13    # "bitmap2":Lcom/baidu/mapapi/map/BitmapDescriptor;
    .end local v24    # "option1":Lcom/baidu/mapapi/map/OverlayOptions;
    .end local v25    # "option2":Lcom/baidu/mapapi/map/OverlayOptions;
    .end local v26    # "point1":Lcom/baidu/mapapi/model/LatLng;
    .end local v27    # "point2":Lcom/baidu/mapapi/model/LatLng;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    .line 263
    .end local v14    # "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    .end local v16    # "i":I
    .end local v18    # "lls":Lcom/baidu/mapapi/model/LatLng;
    .end local v19    # "locData":Lcom/baidu/mapapi/map/MyLocationData;
    .end local v20    # "locationZx":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    .end local v23    # "myPoints":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    :goto_1
    return-void

    .line 232
    :cond_2
    const v10, 0xffff88

    .line 233
    .local v10, "accuracyCircleFillColor":I
    const v11, 0xff00

    .line 235
    .local v11, "accuracyCircleStrokeColor":I
    const v4, 0x7f0201c4

    .line 236
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v7

    .line 237
    .local v7, "mCurrentMarker":Lcom/baidu/mapapi/map/BitmapDescriptor;
    sget-object v5, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 241
    .local v5, "mCurrentMode":Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v28

    new-instance v4, Lcom/baidu/mapapi/map/MyLocationConfiguration;

    const/4 v6, 0x1

    const v8, 0xffff88

    const v9, 0xff00

    invoke-direct/range {v4 .. v9}, Lcom/baidu/mapapi/map/MyLocationConfiguration;-><init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationConfigeration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    .line 248
    new-instance v15, Lcom/baidu/mapapi/model/LatLng;

    const-wide v8, 0x40368a6aa8eb4635L    # 22.54069

    const-wide v28, 0x405c7c5b20b8066cL    # 113.943062

    move-wide/from16 v0, v28

    invoke-direct {v15, v8, v9, v0, v1}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 250
    .local v15, "cenpt":Lcom/baidu/mapapi/model/LatLng;
    new-instance v4, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 251
    invoke-virtual {v4, v15}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v4

    const/high16 v6, 0x41800000    # 16.0f

    .line 252
    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v4

    .line 253
    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v21

    .line 257
    .local v21, "mMapStatus":Lcom/baidu/mapapi/map/MapStatus;
    invoke-static/range {v21 .. v21}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v22

    .line 259
    .local v22, "mMapStatusUpdate":Lcom/baidu/mapapi/map/MapStatusUpdate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_1
.end method
