.class public abstract Loverlayutil/OverlayManager;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;


# instance fields
.field mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field mOverlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 1
    .param p1, "baiduMap"    # Lcom/baidu/mapapi/map/BaiduMap;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Loverlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 32
    iput-object v0, p0, Loverlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    .line 34
    iput-object v0, p0, Loverlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    .line 42
    iput-object p1, p0, Loverlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 44
    iget-object v0, p0, Loverlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loverlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    .line 47
    :cond_0
    iget-object v0, p0, Loverlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loverlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public final addToMap()V
    .locals 5

    .prologue
    .line 63
    iget-object v2, p0, Loverlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v2, :cond_1

    .line 76
    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Loverlayutil/OverlayManager;->removeFromMap()V

    .line 68
    invoke-virtual {p0}, Loverlayutil/OverlayManager;->getOverlayOptions()Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "overlayOptions":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/map/OverlayOptions;>;"
    if-eqz v1, :cond_2

    .line 70
    iget-object v2, p0, Loverlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-virtual {p0}, Loverlayutil/OverlayManager;->getOverlayOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_2
    iget-object v2, p0, Loverlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayOptions;

    .line 74
    .local v0, "option":Lcom/baidu/mapapi/map/OverlayOptions;
    iget-object v3, p0, Loverlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    iget-object v4, p0, Loverlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract getOverlayOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation
.end method

.method public final removeFromMap()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Loverlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Loverlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 86
    .local v0, "marker":Lcom/baidu/mapapi/map/Overlay;
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Overlay;->remove()V

    goto :goto_1

    .line 88
    .end local v0    # "marker":Lcom/baidu/mapapi/map/Overlay;
    :cond_1
    iget-object v1, p0, Loverlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    iget-object v1, p0, Loverlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public zoomToSpan()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Loverlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p0, Loverlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 105
    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 106
    .local v0, "builder":Lcom/baidu/mapapi/model/LatLngBounds$Builder;
    iget-object v2, p0, Loverlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Overlay;

    .line 108
    .local v1, "overlay":Lcom/baidu/mapapi/map/Overlay;
    instance-of v3, v1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v3, :cond_2

    .line 109
    check-cast v1, Lcom/baidu/mapapi/map/Marker;

    .end local v1    # "overlay":Lcom/baidu/mapapi/map/Overlay;
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_1

    .line 112
    :cond_3
    iget-object v2, p0, Loverlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 113
    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_0
.end method
