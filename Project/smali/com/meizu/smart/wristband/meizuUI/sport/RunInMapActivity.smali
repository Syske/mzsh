.class public Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RunInMapActivity.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;
    }
.end annotation


# static fields
.field public static final KEY_REALSPORT_ID:Ljava/lang/String; = "KEY_REALSPORT_ID"

.field private static final LOCATION_PERMISSION_REQUEST_CODE:I = 0x1

.field private static final LTAG:Ljava/lang/String;

.field private static final accuracyCircleFillColor:I = -0x55000078

.field private static final accuracyCircleStrokeColor:I = -0x55ff0100


# instance fields
.field private final PROGRESS_DOWN:I

.field private final PROGRESS_UP:I

.field private final TIMER_1000:I

.field private bPause:Z

.field private bar_hint_img:Landroid/widget/ImageView;

.field private bdDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private bdLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/BDLocation;",
            ">;"
        }
    .end annotation
.end field

.field private content_calorie:Landroid/widget/TextView;

.field private content_distance:Landroid/widget/TextView;

.field private content_duration:Landroid/widget/TextView;

.field private content_heartrate:Landroid/widget/TextView;

.field private content_speed:Landroid/widget/TextView;

.field private count:I

.field private distance:I

.field private handler:Landroid/os/Handler;

.field private heartRateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation
.end field

.field private isChina:Z

.field isFirstLoc:Z

.field private isdown:Z

.field private iv_gps_enable:Landroid/widget/ImageView;

.field private latLngs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private locationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
            ">;"
        }
    .end annotation
.end field

.field mBaiPolyline:Lcom/baidu/mapapi/map/Polyline;

.field mBaiPolyline2:Lcom/baidu/mapapi/map/Polyline;

.field mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field mCurrentMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private mCurrentMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

.field mLocClient:Lcom/baidu/location/LocationClient;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field mMapView:Lcom/baidu/mapapi/map/MapView;

.field private mPermissionDenied:Z

.field private mSlidingDrawer:Landroid/widget/SlidingDrawer;

.field mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

.field private mUseSecond:I

.field private map_view_history:Landroid/widget/ImageView;

.field private map_view_setting:Landroid/widget/ImageView;

.field public myListener:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;

.field private myPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private myPointss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field runStep:Ljava/lang/Integer;

.field private shortcut_content:Landroid/widget/LinearLayout;

.field private tv_continue:Landroid/widget/TextView;

.field private tv_distance:Landroid/widget/TextView;

.field private tv_finish:Landroid/widget/TextView;

.field private tv_stop:Landroid/widget/TextView;

.field private tv_time_escape:Landroid/widget/TextView;

.field user:Lcom/meizu/smart/wristband/models/database/entity/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->LTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 102
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mPermissionDenied:Z

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->runStep:Ljava/lang/Integer;

    .line 111
    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 112
    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    .line 120
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->isFirstLoc:Z

    .line 121
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->isChina:Z

    .line 127
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myListener:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;

    .line 146
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bPause:Z

    .line 183
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->count:I

    .line 839
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->PROGRESS_DOWN:I

    .line 840
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->PROGRESS_UP:I

    .line 841
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->TIMER_1000:I

    .line 843
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mUseSecond:I

    .line 844
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private Myfinish()V
    .locals 2

    .prologue
    .line 723
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 724
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdDates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1008(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mUseSecond:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mUseSecond:I

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->updateData()V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->updataUI()V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->exit()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->latLngs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->addLines()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->shortcut_content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bar_hint_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_finish:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_continue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_stop:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bPause:Z

    return v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->lambda$setListener$329(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->lambda$setListener$330(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->lambda$setListener$331(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->lambda$stopRun$332(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->lambda$exit$333(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->lambda$exit$334(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->lambda$exit$335(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->lambda$exit$336(Ljava/lang/Throwable;)V

    return-void
.end method

.method private addLines()V
    .locals 6

    .prologue
    .line 457
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->latLngs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 461
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->latLngs:Ljava/util/List;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->latLngs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 462
    .local v0, "lastPoint":Lcom/baidu/mapapi/model/LatLng;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->latLngs:Ljava/util/List;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->latLngs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .line 463
    .local v1, "lastPoint1":Lcom/baidu/mapapi/model/LatLng;
    const-string v3, "onReceivePoi"

    const-string v4, "inginginginging"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v3, "myPoints.size()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v3, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    const-string v4, "#3BCA30"

    .line 470
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myPoints:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    .line 471
    .local v2, "ooPolyline":Lcom/baidu/mapapi/map/OverlayOptions;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/Polyline;

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiPolyline:Lcom/baidu/mapapi/map/Polyline;

    goto :goto_0
.end method

.method private checkGps()V
    .locals 3

    .prologue
    .line 477
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 478
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 480
    const v1, 0x7f0800fd

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method

.method private dataInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 205
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 206
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStartTime(Ljava/util/Date;)V

    .line 207
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSpeed(Ljava/lang/Integer;)V

    .line 208
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setPace(Ljava/lang/Integer;)V

    .line 209
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setDistance(Ljava/lang/Integer;)V

    .line 210
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setCalorie(Ljava/lang/Float;)V

    .line 211
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 212
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreq(Ljava/lang/Integer;)V

    .line 213
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStepCount(Ljava/lang/Integer;)V

    .line 214
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreqland(Ljava/lang/Integer;)V

    .line 215
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 216
    return-void
.end method

.method private debugLocation(Lcom/baidu/location/BDLocation;)V
    .locals 8
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 393
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 394
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, "time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v3, "\nLocType code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 398
    const-string v3, "\nlatitude : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 400
    const-string v3, "\nlontitude : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 402
    const-string v3, "\nradius : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    .line 405
    const-string v3, "\nspeed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 407
    const-string v3, "\nsatellite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSatelliteNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 409
    const-string v3, "\nheight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 411
    const-string v3, "\ndirection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 413
    const-string v3, "\naddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v3, "gps\u5b9a\u4f4d\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_0
    :goto_0
    const-string v3, "\nlocationdescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    .line 444
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/location/Poi;>;"
    if-eqz v0, :cond_6

    .line 445
    const-string v3, "\npoilist size = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 447
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/Poi;

    .line 448
    .local v1, "p":Lcom/baidu/location/Poi;
    const-string v4, "\npoi= : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/location/Poi;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/location/Poi;->getRank()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 418
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/location/Poi;>;"
    .end local v1    # "p":Lcom/baidu/location/Poi;
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_2

    .line 419
    const-string v3, "\naddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const-string v3, "\noperationers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getOperators()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 424
    const-string v3, "\nNetworkLocationType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string/jumbo v3, "\u7f51\u7edc\u5b9a\u4f4d\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 428
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_3

    .line 429
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string/jumbo v3, "\u79bb\u7ebf\u5b9a\u4f4d\u6210\u529f\uff0c\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\u4e5f\u662f\u6709\u6548\u7684"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 431
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa7

    if-ne v3, v4, :cond_4

    .line 432
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string/jumbo v3, "\u670d\u52a1\u7aef\u7f51\u7edc\u5b9a\u4f4d\u5931\u8d25\uff0c\u53ef\u4ee5\u53cd\u9988IMEI\u53f7\u548c\u5927\u4f53\u5b9a\u4f4d\u65f6\u95f4\u5230loc-bugs@baidu.com\uff0c\u4f1a\u6709\u4eba\u8ffd\u67e5\u539f\u56e0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 434
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_5

    .line 435
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u540c\u5bfc\u81f4\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u901a\u7545"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 437
    :cond_5
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 438
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string/jumbo v3, "\u65e0\u6cd5\u83b7\u53d6\u6709\u6548\u5b9a\u4f4d\u4f9d\u636e\u5bfc\u81f4\u5b9a\u4f4d\u5931\u8d25\uff0c\u4e00\u822c\u662f\u7531\u4e8e\u624b\u673a\u7684\u539f\u56e0\uff0c\u5904\u4e8e\u98de\u884c\u6a21\u5f0f\u4e0b\u4e00\u822c\u4f1a\u9020\u6210\u8fd9\u79cd\u7ed3\u679c\uff0c\u53ef\u4ee5\u8bd5\u7740\u91cd\u542f\u624b\u673a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 453
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/location/Poi;>;"
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debugLocation\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method private doContinue()V
    .locals 14

    .prologue
    .line 799
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 800
    .local v12, "setLeft":Landroid/view/animation/AnimationSet;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 801
    .local v13, "setRight":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 803
    .local v0, "taleft":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 805
    .local v1, "taright":Landroid/view/animation/TranslateAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 806
    .local v10, "aa":Landroid/view/animation/AlphaAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 807
    .local v11, "aa1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 808
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 809
    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 810
    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 811
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 812
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 813
    invoke-virtual {v13, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 814
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 815
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_finish:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 816
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_continue:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 817
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bPause:Z

    .line 818
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$6;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 837
    return-void
.end method

.method private doOnActionDown()V
    .locals 4

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->isdown:Z

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 910
    :cond_0
    return-void
.end method

.method private doOnActionUp()V
    .locals 4

    .prologue
    .line 903
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 904
    return-void
.end method

.method private enableMyLocation()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 530
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1, v0, v1}, Lcom/meizu/smart/wristband/utils/PermissionUtils;->requestPermission(Landroid/support/v7/app/AppCompatActivity;ILjava/lang/String;Z)V

    .line 540
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v1, 0x190

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 541
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    goto :goto_0
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 1035
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 1036
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 1038
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 1039
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 1040
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1041
    return-void
.end method

.method private gotoChoose()V
    .locals 10

    .prologue
    .line 884
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bPause:Z

    .line 885
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 887
    .local v0, "taleft":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 889
    .local v1, "taright":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 890
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 891
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_finish:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_continue:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_stop:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_finish:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 896
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_continue:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 897
    return-void
.end method

.method private initBaiDuMap()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 227
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    const v1, 0x7f0200fb

    .line 240
    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mCurrentMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 241
    sget-object v1, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mCurrentMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 244
    const v1, 0x7f0e01e5

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/MapView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    .line 245
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 247
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 251
    new-instance v1, Lcom/baidu/location/LocationClient;

    invoke-direct {v1, p0}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    .line 253
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myListener:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$MyLocationListenner;

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 256
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 257
    .local v0, "option":Lcom/baidu/location/LocationClientOption;
    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 259
    invoke-virtual {v0, v4}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 260
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 261
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 262
    invoke-virtual {v0, v4}, Lcom/baidu/location/LocationClientOption;->setEnableSimulateGps(Z)V

    .line 263
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myPoints:Ljava/util/List;

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myPointss:Ljava/util/List;

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->latLngs:Ljava/util/List;

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdDates:Ljava/util/List;

    .line 272
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->start()V

    .line 274
    return-void

    .line 232
    .end local v0    # "option":Lcom/baidu/location/LocationClientOption;
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private initUnit()V
    .locals 3

    .prologue
    .line 660
    sget-boolean v2, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    if-nez v2, :cond_0

    .line 661
    const v2, 0x7f0e01eb

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 662
    .local v1, "tv_km":Landroid/widget/TextView;
    const-string v2, " mi"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    const v2, 0x7f0e01ed

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 664
    .local v0, "co_km":Landroid/widget/TextView;
    const-string v2, " mi"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    .end local v0    # "co_km":Landroid/widget/TextView;
    .end local v1    # "tv_km":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 590
    const v0, 0x7f0e01e6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 591
    const v0, 0x7f0e01ea

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->shortcut_content:Landroid/widget/LinearLayout;

    .line 592
    const v0, 0x7f0e01f2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->map_view_history:Landroid/widget/ImageView;

    .line 593
    const v0, 0x7f0e01e9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bar_hint_img:Landroid/widget/ImageView;

    .line 594
    const v0, 0x7f0e01f3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->map_view_setting:Landroid/widget/ImageView;

    .line 595
    const v0, 0x7f0e0139

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_stop:Landroid/widget/TextView;

    .line 597
    const v0, 0x7f0e013a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_finish:Landroid/widget/TextView;

    .line 598
    const v0, 0x7f0e013b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_continue:Landroid/widget/TextView;

    .line 599
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_time_escape:Landroid/widget/TextView;

    .line 600
    const v0, 0x7f0e01ee

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_duration:Landroid/widget/TextView;

    .line 601
    const v0, 0x7f0e01ef

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_speed:Landroid/widget/TextView;

    .line 602
    const v0, 0x7f0e01f1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_heartrate:Landroid/widget/TextView;

    .line 603
    const v0, 0x7f0e01f0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_calorie:Landroid/widget/TextView;

    .line 604
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_distance:Landroid/widget/TextView;

    .line 605
    const v0, 0x7f0e01ec

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_distance:Landroid/widget/TextView;

    .line 608
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    .line 609
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 617
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 625
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->map_view_history:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->map_view_setting:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    .line 649
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->isGpsEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    const v1, 0x7f02019d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 656
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 657
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    const v1, 0x7f02019c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private isNetwork()Z
    .locals 4

    .prologue
    .line 965
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 966
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 968
    .local v2, "mTelephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 969
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 971
    :cond_0
    const/4 v3, 0x0

    .line 973
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private jumpOut()V
    .locals 4

    .prologue
    .line 729
    const/4 v2, 0x1

    sput-boolean v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mFinish:Z

    .line 731
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 732
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getAllRunSport(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 733
    .local v1, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 734
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "KEY_REALSPORT_ID"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 736
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 739
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->finish()V

    .line 740
    return-void
.end method

.method private synthetic lambda$exit$333(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "Void"    # Ljava/lang/Boolean;

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->saveRunData()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$exit$334(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "Void"    # Ljava/lang/Boolean;

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->stopRun()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$exit$335(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->jumpOut()V

    return-void
.end method

.method private synthetic lambda$exit$336(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->jumpOut()V

    return-void
.end method

.method private synthetic lambda$setListener$329(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->gotoChoose()V

    return-void
.end method

.method private synthetic lambda$setListener$330(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->doContinue()V

    return-void
.end method

.method private synthetic lambda$setListener$331(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->showExitDialog()V

    return-void
.end method

.method private synthetic lambda$stopRun$332(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 791
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreqland(Ljava/lang/Integer;)V

    return-void
.end method

.method private saveRunData()Lrx/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_0

    .line 747
    const v5, 0x7f0800f7

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 748
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    .line 785
    :goto_0
    return-object v5

    .line 751
    :cond_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAvgHeartRate(Ljava/util/List;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 752
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getRecords()Ljava/util/List;

    move-result-object v4

    .line 753
    .local v4, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v3, "location1s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    const-string v5, "bdLocations"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->isNetwork()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_1

    .line 756
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 758
    const-string v6, "bdLocationszb"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "===="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Location1;-><init>()V

    .line 760
    .local v1, "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdDates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setTime(Ljava/util/Date;)V

    .line 762
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setX(Ljava/lang/Float;)V

    .line 763
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setY(Ljava/lang/Float;)V

    .line 764
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setSpeed(Ljava/lang/Float;)V

    .line 765
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setDirect(Ljava/lang/Float;)V

    .line 766
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 767
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 770
    .end local v0    # "i":I
    .end local v1    # "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    :cond_1
    const-string v5, "isnetwork"

    const-string/jumbo v6, "\u65e0\u7f51\u7edc"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 772
    .local v2, "location":Landroid/location/Location;
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Location1;-><init>()V

    .line 773
    .restart local v1    # "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setTime(Ljava/util/Date;)V

    .line 774
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setX(Ljava/lang/Float;)V

    .line 775
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setY(Ljava/lang/Float;)V

    .line 776
    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setSpeed(Ljava/lang/Float;)V

    .line 777
    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setDirect(Ljava/lang/Float;)V

    .line 778
    const-string v6, "setDirect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 780
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 783
    .end local v1    # "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    .end local v2    # "location":Landroid/location/Location;
    :cond_2
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAvgHeartRate(Ljava/util/List;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 784
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->stopRecord()V

    .line 785
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-static {p0, v5, v6, v7, v3}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->saveRunSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;Ljava/util/ArrayList;Ljava/util/List;)Lrx/Observable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_stop:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 709
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 711
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_continue:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 712
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 714
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_finish:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 720
    return-void
.end method

.method private showExitDialog()V
    .locals 8

    .prologue
    .line 991
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 992
    .local v3, "inflaterDl":Landroid/view/LayoutInflater;
    const v6, 0x7f040073

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 993
    .local v4, "layout":Landroid/widget/RelativeLayout;
    const v6, 0x7f0e025d

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 996
    .local v5, "tvInfo":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x64

    if-ge v6, v7, :cond_0

    .line 997
    const v6, 0x7f080102

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1004
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1006
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1007
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 1011
    const v6, 0x7f0e025b

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1012
    .local v0, "btnCancel":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$8;

    invoke-direct {v6, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    const v6, 0x7f0e025e

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1023
    .local v1, "btnOK":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$9;

    invoke-direct {v6, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    return-void

    .line 999
    .end local v0    # "btnCancel":Landroid/widget/RelativeLayout;
    .end local v1    # "btnOK":Landroid/widget/RelativeLayout;
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_0
    const v6, 0x7f080101

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showMissingPermissionError()V
    .locals 3

    .prologue
    .line 575
    const/4 v0, 0x1

    .line 576
    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->newInstance(Z)Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private stopRun()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 791
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->stopRun()Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    .line 793
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method private updataUI()V
    .locals 8

    .prologue
    .line 682
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 683
    .local v0, "time_second":J
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_time_escape:Landroid/widget/TextView;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mUseSecond:I

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->formatTimeString1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_duration:Landroid/widget/TextView;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mUseSecond:I

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->formatTimeString1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->tv_distance:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_distance:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_speed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getPace()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatPaceToString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_calorie:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getCalorie()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->isGpsEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    const v3, 0x7f02019d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    const v3, 0x7f02019c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateData()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 669
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->runStep:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStepCount(Ljava/lang/Integer;)V

    .line 670
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6, v7, v5}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorie(DF)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setCalorie(Ljava/lang/Float;)V

    .line 671
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setEndTime(Ljava/util/Date;)V

    .line 673
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 674
    .local v2, "timeEscape":J
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mUseSecond:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 675
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-double v4, v4

    div-double/2addr v4, v12

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getPace(DI)D

    move-result-wide v0

    .line 676
    .local v0, "pace":D
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v0

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setPace(Ljava/lang/Integer;)V

    .line 677
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->runStep:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    long-to-double v10, v2

    mul-double/2addr v8, v10

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    div-double/2addr v8, v12

    div-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreq(Ljava/lang/Integer;)V

    .line 678
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    div-long/2addr v6, v2

    long-to-double v6, v6

    const-wide v8, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSpeed(Ljava/lang/Integer;)V

    .line 679
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 152
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const v2, 0x7f040047

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->setContentView(I)V

    .line 155
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->dataInit()V

    .line 156
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->initView()V

    .line 158
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->checkGps()V

    .line 159
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->setListener()V

    .line 160
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->initBaiDuMap()V

    .line 162
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->startRecord()V

    .line 163
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->addListener(Landroid/location/LocationListener;)V

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "broadcast_notify_message"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v0}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v1

    .line 168
    .local v1, "stepObservable":Lrx/Observable;, "Lrx/Observable<Landroid/content/Intent;>;"
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 179
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 180
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 981
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 982
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    .line 983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    .line 984
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->myPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 985
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->stopRecord()V

    .line 986
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 987
    return-void
.end method

.method public onHeartReaded(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 187
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->count:I

    .line 188
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->count:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_0

    .line 189
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 190
    .local v0, "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setTime(Ljava/util/Date;)V

    .line 191
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_RUNTIME:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setType(Ljava/lang/Integer;)V

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setValue(Ljava/lang/Integer;)V

    .line 193
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 194
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setSync(Ljava/lang/Boolean;)V

    .line 195
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v0    # "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeartReadedtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->content_heartrate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 931
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 932
    const/4 v0, 0x1

    .line 934
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 582
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getDistance()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->distance:I

    .line 584
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v3, v1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorie(DF)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setCalorie(Ljava/lang/Float;)V

    .line 585
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->distance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setDistance(Ljava/lang/Integer;)V

    .line 586
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    .line 955
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 956
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 950
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 945
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 547
    if-eq p1, v1, :cond_0

    .line 559
    :goto_0
    return-void

    .line 551
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p2, p3, v0}, Lcom/meizu/smart/wristband/utils/PermissionUtils;->isPermissionGranted([Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->enableMyLocation()V

    goto :goto_0

    .line 557
    :cond_1
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mPermissionDenied:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    .line 961
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 962
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .prologue
    .line 563
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResumeFragments()V

    .line 564
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mPermissionDenied:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->showMissingPermissionError()V

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->mPermissionDenied:Z

    .line 569
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 940
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 915
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 926
    :goto_0
    return v1

    .line 917
    :pswitch_0
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->isdown:Z

    .line 919
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->doOnActionDown()V

    goto :goto_0

    .line 922
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->isdown:Z

    .line 923
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->doOnActionUp()V

    goto :goto_0

    .line 915
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public optimizePoints(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    .local p1, "inPoint":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1054
    .local v10, "size":I
    const/4 v11, 0x5

    if-ge v10, v11, :cond_0

    .line 1077
    :goto_0
    return-object p1

    .line 1057
    :cond_0
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v12, v14

    const/4 v11, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v6, v12, v14

    .line 1058
    .local v6, "latitude":D
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v12, v14

    const/4 v11, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v8, v12, v14

    .line 1059
    .local v8, "longitude":D
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1060
    .local v2, "latLng0":Lcom/baidu/mapapi/model/LatLng;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v6, v12, v14

    .line 1063
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v8, v12, v14

    .line 1064
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1065
    .local v3, "latLng1":Lcom/baidu/mapapi/model/LatLng;
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v11, v10, -0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v6, v12, v14

    .line 1068
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v11, v10, -0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v8, v12, v14

    .line 1069
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1070
    .local v4, "latLng2":Lcom/baidu/mapapi/model/LatLng;
    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v6, v12, v14

    .line 1073
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v8, v12, v14

    .line 1074
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1075
    .local v5, "latLng3":Lcom/baidu/mapapi/model/LatLng;
    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
