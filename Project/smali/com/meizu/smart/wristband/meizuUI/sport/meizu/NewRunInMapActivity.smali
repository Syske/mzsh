.class public Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NewRunInMapActivity.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$MyLocationListenner;
    }
.end annotation


# static fields
.field public static final KEY_REALSPORT_ID:Ljava/lang/String; = "KEY_REALSPORT_ID"

.field private static final LOCATION_PERMISSION_REQUEST_CODE:I = 0x1

.field private static final LTAG:Ljava/lang/String;

.field private static final accuracyCircleFillColor:I = 0xffff88

.field private static final accuracyCircleStrokeColor:I = 0xff00


# instance fields
.field private final PROGRESS_DOWN:I

.field private final PROGRESS_UP:I

.field private ShowheartRateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final TIMER_1000:I

.field private bFinish:Z

.field private bPause:Z

.field private bRun:Z

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

.field private exitDlg:Landroid/app/AlertDialog;

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

.field private layoutCount:Landroid/widget/RelativeLayout;

.field private linearLayoutFinish:Landroid/widget/LinearLayout;

.field private linearLayoutFinish1:Landroid/widget/LinearLayout;

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

.field private mChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mContext:Landroid/content/Context;

.field mCurrentMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private mCurrentMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

.field mLocClient:Lcom/baidu/location/LocationClient;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field mMapView:Lcom/baidu/mapapi/map/MapView;

.field private mPermissionDenied:Z

.field private mSlidingDrawer:Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;

.field mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

.field private mUseSecond:I

.field private map_view_history:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private map_view_setting:Landroid/widget/Button;

.field private map_view_setting1:Landroid/widget/Button;

.field public myListener:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$MyLocationListenner;

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

.field private runCount:I

.field runStep:Ljava/lang/Integer;

.field private shortcut_content:Landroid/widget/LinearLayout;

.field private slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

.field private slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

.field private tv_continue:Landroid/widget/Button;

.field private tv_continue1:Landroid/widget/Button;

.field private tv_count:Landroid/widget/TextView;

.field private tv_distance:Landroid/widget/TextView;

.field private tv_finish:Landroid/widget/Button;

.field private tv_finish1:Landroid/widget/Button;

.field private tv_speed:Landroid/widget/TextView;

.field private tv_start:Landroid/widget/Button;

.field private tv_start1:Landroid/widget/Button;

.field private tv_stop:Landroid/widget/Button;

.field private tv_time_escape:Landroid/widget/TextView;

.field user:Lcom/meizu/smart/wristband/models/database/entity/User;

.field private view_fullScreen:Landroid/widget/ImageView;

.field private view_smallScreen:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    const-class v0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->LTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mPermissionDenied:Z

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->runStep:Ljava/lang/Integer;

    .line 127
    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 128
    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ShowheartRateList:Ljava/util/ArrayList;

    .line 137
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->isFirstLoc:Z

    .line 138
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->isChina:Z

    .line 144
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$MyLocationListenner;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$MyLocationListenner;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myListener:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$MyLocationListenner;

    .line 163
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    .line 176
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bRun:Z

    .line 180
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bFinish:Z

    .line 330
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->count:I

    .line 1017
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->runCount:I

    .line 1294
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->PROGRESS_DOWN:I

    .line 1295
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->PROGRESS_UP:I

    .line 1296
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->TIMER_1000:I

    .line 1298
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    .line 1299
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private ExitFinish()V
    .locals 1

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bRun:Z

    if-eqz v0, :cond_0

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bFinish:Z

    .line 1011
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->showExitDialog()V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->finish()V

    goto :goto_0
.end method

.method private Myfinish()V
    .locals 2

    .prologue
    .line 1122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1123
    return-void
.end method

.method private ResetRunInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1021
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->dataInit()V

    .line 1023
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_distance:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_time_escape:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_speed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getPace()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatPaceToString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_duration:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_distance:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_speed:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_calorie:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_heartrate:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->reset()V

    .line 1034
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->reset()V

    .line 1036
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1039
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mBaiPolyline:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    .line 1045
    :cond_0
    iput-boolean v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    .line 1046
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_count:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->runCount:I

    .line 1048
    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    .line 1049
    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->count:I

    .line 1050
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1051
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ShowheartRateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1052
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->linearLayoutFinish1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSlidingDrawer:Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->runCount:I

    return v0
.end method

.method static synthetic access$1310(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->runCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->runCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->startRun()V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    return v0
.end method

.method static synthetic access$1608(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    return v0
.end method

.method static synthetic access$1700(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->updateData()V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->updataUI()V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->setRunInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdDates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bFinish:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exitDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exit()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->latLngs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->addLines()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->shortcut_content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->pauseToRun()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->linearLayoutFinish:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$setListener$303(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$setListener$304(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$exit$314(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$exit$315(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$exit$316(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$setListener$305(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$setListener$306(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$setListener$307(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$setListener$308(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$setListener$309(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$setListener$310(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$stopRun$312(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->lambda$exit$313(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private addLines()V
    .locals 6

    .prologue
    .line 635
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->latLngs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 639
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->latLngs:Ljava/util/List;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->latLngs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 640
    .local v0, "lastPoint":Lcom/baidu/mapapi/model/LatLng;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->latLngs:Ljava/util/List;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->latLngs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .line 641
    .local v1, "lastPoint1":Lcom/baidu/mapapi/model/LatLng;
    const-string v3, "onReceivePoi"

    const-string v4, "inginginginging"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    const-string v3, "myPoints.size()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myPoints:Ljava/util/List;

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

    .line 647
    new-instance v3, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    const-string v4, "#61CFDA"

    .line 648
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myPoints:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    .line 649
    .local v2, "ooPolyline":Lcom/baidu/mapapi/map/OverlayOptions;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/Polyline;

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mBaiPolyline:Lcom/baidu/mapapi/map/Polyline;

    goto :goto_0
.end method

.method private beginToRun()V
    .locals 3

    .prologue
    .line 1214
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 1216
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->beginToRun()Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 1217
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1219
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_0
    return-void
.end method

.method private checkGps()V
    .locals 3

    .prologue
    .line 655
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 656
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 658
    const v1, 0x7f0800fd

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 661
    :cond_0
    return-void
.end method

.method private dataInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 357
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 358
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStartTime(Ljava/util/Date;)V

    .line 359
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSpeed(Ljava/lang/Integer;)V

    .line 360
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setPace(Ljava/lang/Integer;)V

    .line 361
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setDistance(Ljava/lang/Integer;)V

    .line 362
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setCalorie(Ljava/lang/Float;)V

    .line 363
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 364
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreq(Ljava/lang/Integer;)V

    .line 365
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStepCount(Ljava/lang/Integer;)V

    .line 366
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreqland(Ljava/lang/Integer;)V

    .line 367
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 368
    return-void
.end method

.method private debugLocation(Lcom/baidu/location/BDLocation;)V
    .locals 8
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 571
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 572
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, "time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    const-string v3, "\nLocType code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 576
    const-string v3, "\nlatitude : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 578
    const-string v3, "\nlontitude : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 580
    const-string v3, "\nradius : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    .line 583
    const-string v3, "\nspeed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 585
    const-string v3, "\nsatellite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSatelliteNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 587
    const-string v3, "\nheight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 589
    const-string v3, "\ndirection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 591
    const-string v3, "\naddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    const-string v3, "gps\u5b9a\u4f4d\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    :cond_0
    :goto_0
    const-string v3, "\nlocationdescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    .line 622
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/location/Poi;>;"
    if-eqz v0, :cond_6

    .line 623
    const-string v3, "\npoilist size = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 625
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/Poi;

    .line 626
    .local v1, "p":Lcom/baidu/location/Poi;
    const-string v4, "\npoi= : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
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

    .line 596
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/location/Poi;>;"
    .end local v1    # "p":Lcom/baidu/location/Poi;
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_2

    .line 597
    const-string v3, "\naddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    const-string v3, "\noperationers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getOperators()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 602
    const-string v3, "\nNetworkLocationType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const-string/jumbo v3, "\u7f51\u7edc\u5b9a\u4f4d\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 606
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_3

    .line 607
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    const-string/jumbo v3, "\u79bb\u7ebf\u5b9a\u4f4d\u6210\u529f\uff0c\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\u4e5f\u662f\u6709\u6548\u7684"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 609
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa7

    if-ne v3, v4, :cond_4

    .line 610
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    const-string/jumbo v3, "\u670d\u52a1\u7aef\u7f51\u7edc\u5b9a\u4f4d\u5931\u8d25\uff0c\u53ef\u4ee5\u53cd\u9988IMEI\u53f7\u548c\u5927\u4f53\u5b9a\u4f4d\u65f6\u95f4\u5230loc-bugs@baidu.com\uff0c\u4f1a\u6709\u4eba\u8ffd\u67e5\u539f\u56e0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 612
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_5

    .line 613
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u540c\u5bfc\u81f4\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u901a\u7545"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 615
    :cond_5
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 616
    const-string v3, "\ndescribe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const-string/jumbo v3, "\u65e0\u6cd5\u83b7\u53d6\u6709\u6548\u5b9a\u4f4d\u4f9d\u636e\u5bfc\u81f4\u5b9a\u4f4d\u5931\u8d25\uff0c\u4e00\u822c\u662f\u7531\u4e8e\u624b\u673a\u7684\u539f\u56e0\uff0c\u5904\u4e8e\u98de\u884c\u6a21\u5f0f\u4e0b\u4e00\u822c\u4f1a\u9020\u6210\u8fd9\u79cd\u7ed3\u679c\uff0c\u53ef\u4ee5\u8bd5\u7740\u91cd\u542f\u624b\u673a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 631
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

    .line 632
    return-void
.end method

.method private doContinue()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1242
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->linearLayoutFinish:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setVisibility(I)V

    .line 1244
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->reset()V

    .line 1246
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->linearLayoutFinish1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->reset()V

    .line 1250
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    .line 1252
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->resumeRecord()V

    .line 1292
    return-void
.end method

.method private doOnActionDown()V
    .locals 4

    .prologue
    .line 1365
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->isdown:Z

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1368
    :cond_0
    return-void
.end method

.method private doOnActionUp()V
    .locals 4

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1362
    return-void
.end method

.method private enableMyLocation()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 708
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1, v0, v1}, Lcom/meizu/smart/wristband/utils/PermissionUtils;->requestPermission(Landroid/support/v7/app/AppCompatActivity;ILjava/lang/String;Z)V

    .line 718
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v1, 0x190

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 719
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    goto :goto_0
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 1510
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 1511
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 1512
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$11;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 1513
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 1514
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$13;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 1515
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 1516
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1517
    return-void
.end method

.method private gotoChoose()V
    .locals 10

    .prologue
    .line 1342
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    .line 1343
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

    .line 1345
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

    .line 1347
    .local v1, "taright":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1348
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1349
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_finish:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1350
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_continue:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1351
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_stop:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1353
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_finish:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1354
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_continue:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1355
    return-void
.end method

.method private initBaiDuMap()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 379
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    const v0, 0x7f0201c4

    .line 402
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mCurrentMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 403
    sget-object v0, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mCurrentMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 406
    const v0, 0x7f0e01e5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    .line 407
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 414
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 416
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v0, Lcom/baidu/mapapi/map/MyLocationConfiguration;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mCurrentMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mCurrentMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const v4, 0xffff88

    const v5, 0xff00

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/map/MyLocationConfiguration;-><init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;II)V

    invoke-virtual {v7, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationConfigeration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    .line 421
    new-instance v0, Lcom/baidu/location/LocationClient;

    invoke-direct {v0, p0}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    .line 423
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myListener:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$MyLocationListenner;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 426
    new-instance v6, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v6}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 427
    .local v6, "option":Lcom/baidu/location/LocationClientOption;
    sget-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v6, v0}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 429
    invoke-virtual {v6, v2}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 430
    const-string v0, "bd09ll"

    invoke-virtual {v6, v0}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 431
    const/16 v0, 0x7d0

    invoke-virtual {v6, v0}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 432
    invoke-virtual {v6, v2}, Lcom/baidu/location/LocationClientOption;->setEnableSimulateGps(Z)V

    .line 433
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, v6}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myPoints:Ljava/util/List;

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myPointss:Ljava/util/List;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->latLngs:Ljava/util/List;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdDates:Ljava/util/List;

    .line 442
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 445
    return-void

    .line 384
    .end local v6    # "option":Lcom/baidu/location/LocationClientOption;
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v0, v1

    const/16 v1, 0x6e

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private initChart()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 222
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 235
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 236
    .local v0, "x":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 237
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 240
    const-string v3, "#B2B2B2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 241
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 242
    invoke-virtual {v0, v7, v7, v8}, Lcom/github/mikephil/charting/components/XAxis;->enableGridDashedLine(FFF)V

    .line 244
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 246
    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/components/XAxis;->setLabelsToSkip(I)V

    .line 248
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 250
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 252
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 253
    .local v2, "yr":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 255
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 256
    .local v1, "y":Lcom/github/mikephil/charting/components/YAxis;
    const-string v3, "#B2B2B2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 257
    invoke-virtual {v1, v9, v6}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 258
    const v3, -0x777778

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 260
    invoke-virtual {v1, v7, v7, v8}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    .line 261
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 263
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setStartAtZero(Z)V

    .line 264
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    .line 266
    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinValue(F)V

    .line 267
    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 268
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawTopYLabelEntry(Z)V

    .line 271
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 272
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->setChartData()V

    .line 273
    return-void
.end method

.method private initUnit()V
    .locals 3

    .prologue
    .line 920
    sget-boolean v2, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    if-nez v2, :cond_0

    .line 921
    const v2, 0x7f0e01eb

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 922
    .local v1, "tv_km":Landroid/widget/TextView;
    const-string v2, " mi"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    const v2, 0x7f0e01ed

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 924
    .local v0, "co_km":Landroid/widget/TextView;
    const-string v2, " mi"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    .end local v0    # "co_km":Landroid/widget/TextView;
    .end local v1    # "tv_km":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 771
    const v0, 0x7f0e01e6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSlidingDrawer:Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;

    .line 773
    const v0, 0x7f0e01ea

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->shortcut_content:Landroid/widget/LinearLayout;

    .line 774
    const v0, 0x7f0e02cd

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->map_view_history:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 776
    const v0, 0x7f0e01f3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->map_view_setting:Landroid/widget/Button;

    .line 777
    const v0, 0x7f0e02ce

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->map_view_setting1:Landroid/widget/Button;

    .line 781
    const v0, 0x7f0e02d0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->view_fullScreen:Landroid/widget/ImageView;

    .line 783
    const v0, 0x7f0e02d3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->view_smallScreen:Landroid/widget/ImageView;

    .line 787
    const v0, 0x7f0e013a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_finish:Landroid/widget/Button;

    .line 788
    const v0, 0x7f0e013b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_continue:Landroid/widget/Button;

    .line 789
    const v0, 0x7f0e02d1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    .line 790
    const v0, 0x7f0e016e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start:Landroid/widget/Button;

    .line 791
    const v0, 0x7f0e02d2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->linearLayoutFinish:Landroid/widget/LinearLayout;

    .line 793
    const v0, 0x7f0e02d7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_finish1:Landroid/widget/Button;

    .line 794
    const v0, 0x7f0e02d8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_continue1:Landroid/widget/Button;

    .line 795
    const v0, 0x7f0e02d5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    .line 796
    const v0, 0x7f0e02d4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start1:Landroid/widget/Button;

    .line 797
    const v0, 0x7f0e02d6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->linearLayoutFinish1:Landroid/widget/LinearLayout;

    .line 799
    const v0, 0x7f0e02d9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->layoutCount:Landroid/widget/RelativeLayout;

    .line 800
    const v0, 0x7f0e01f4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_count:Landroid/widget/TextView;

    .line 802
    const v0, 0x7f0e01ee

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_duration:Landroid/widget/TextView;

    .line 803
    const v0, 0x7f0e01ef

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_speed:Landroid/widget/TextView;

    .line 804
    const v0, 0x7f0e01f1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_heartrate:Landroid/widget/TextView;

    .line 805
    const v0, 0x7f0e01f0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_calorie:Landroid/widget/TextView;

    .line 806
    const v0, 0x7f0e01ec

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_distance:Landroid/widget/TextView;

    .line 808
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_time_escape:Landroid/widget/TextView;

    .line 809
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_distance:Landroid/widget/TextView;

    .line 810
    const v0, 0x7f0e0136

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_speed:Landroid/widget/TextView;

    .line 813
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 820
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSlidingDrawer:Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->close()V

    .line 821
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSlidingDrawer:Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 828
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSlidingDrawer:Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 836
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setOnUnLockListener(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;)V

    .line 852
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setOnUnLockListener(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$OnUnLockListener;)V

    .line 870
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->view_fullScreen:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$6;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 877
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->view_smallScreen:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$7;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->map_view_history:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$8;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->map_view_setting:Landroid/widget/Button;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$9;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->map_view_setting1:Landroid/widget/Button;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$10;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    .line 910
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->isGpsEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    const v1, 0x7f02019d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 917
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    const v1, 0x7f02019c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private isNetwork()Z
    .locals 4

    .prologue
    .line 1432
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1433
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1435
    .local v2, "mTelephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1436
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1438
    :cond_0
    const/4 v3, 0x0

    .line 1440
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private jumpOut()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1129
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 1130
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getAllRunSport(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1131
    .local v1, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1132
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1133
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "KEY_REALSPORT_ID"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1134
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1137
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bRun:Z

    .line 1138
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bFinish:Z

    if-eqz v2, :cond_1

    .line 1139
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->finish()V

    .line 1141
    :cond_1
    return-void
.end method

.method private synthetic lambda$exit$313(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 1512
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->saveRunData()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$exit$314(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 1513
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->stopRun()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$exit$315(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->jumpOut()V

    return-void
.end method

.method private synthetic lambda$exit$316(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->jumpOut()V

    return-void
.end method

.method private synthetic lambda$setListener$303(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->doContinue()V

    return-void
.end method

.method private synthetic lambda$setListener$304(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->showExitDialog()V

    return-void
.end method

.method private synthetic lambda$setListener$305(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->startRunCount()V

    return-void
.end method

.method private synthetic lambda$setListener$306(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->doContinue()V

    return-void
.end method

.method private synthetic lambda$setListener$307(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->showExitDialog()V

    return-void
.end method

.method private synthetic lambda$setListener$308(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 989
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->startRunCount()V

    return-void
.end method

.method private synthetic lambda$setListener$309(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ExitFinish()V

    return-void
.end method

.method private synthetic lambda$setListener$310(Ljava/lang/Void;)V
    .locals 4
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 997
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 998
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 999
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "index"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1000
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1001
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1002
    return-void
.end method

.method private synthetic lambda$stopRun$312(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreqland(Ljava/lang/Integer;)V

    return-void
.end method

.method private pauseToRun()V
    .locals 3

    .prologue
    .line 1222
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 1224
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->pauseToRun()Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 1225
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1227
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_0
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
    .line 1147
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_0

    .line 1148
    const v5, 0x7f0800f7

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 1149
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    .line 1187
    :goto_0
    return-object v5

    .line 1152
    :cond_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->handler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAvgHeartRate(Ljava/util/List;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 1154
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getRecords()Ljava/util/List;

    move-result-object v4

    .line 1155
    .local v4, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v3, "location1s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    const-string v5, "bdLocations"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

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

    .line 1157
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->isNetwork()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_1

    .line 1158
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1161
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Location1;-><init>()V

    .line 1162
    .local v1, "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdDates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setTime(Ljava/util/Date;)V

    .line 1164
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setX(Ljava/lang/Float;)V

    .line 1165
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setY(Ljava/lang/Float;)V

    .line 1166
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setSpeed(Ljava/lang/Float;)V

    .line 1167
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bdLocations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setDirect(Ljava/lang/Float;)V

    .line 1168
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 1169
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1172
    .end local v0    # "i":I
    .end local v1    # "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    :cond_1
    const-string v5, "isnetwork"

    const-string/jumbo v6, "\u65e0\u7f51\u7edc"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 1174
    .local v2, "location":Landroid/location/Location;
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Location1;-><init>()V

    .line 1175
    .restart local v1    # "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setTime(Ljava/util/Date;)V

    .line 1176
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setX(Ljava/lang/Float;)V

    .line 1177
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setY(Ljava/lang/Float;)V

    .line 1178
    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setSpeed(Ljava/lang/Float;)V

    .line 1179
    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setDirect(Ljava/lang/Float;)V

    .line 1180
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

    .line 1181
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 1182
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1186
    .end local v1    # "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    .end local v2    # "location":Landroid/location/Location;
    :cond_2
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAvgHeartRate(Ljava/util/List;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 1187
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-static {p0, v5, v6, v7, v3}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->saveRunSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;Ljava/util/ArrayList;Ljava/util/List;)Lrx/Observable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private setChartData()V
    .locals 15

    .prologue
    .line 279
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v10, "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v8, "vals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v2, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 284
    .local v6, "random":Ljava/util/Random;
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ShowheartRateList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0x1e

    if-le v11, v12, :cond_1

    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ShowheartRateList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 286
    .local v1, "XValueLeng":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-gt v4, v1, :cond_2

    .line 292
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ShowheartRateList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 293
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ShowheartRateList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 294
    .local v9, "value":I
    new-instance v11, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v12, v9

    invoke-direct {v11, v12, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v9    # "value":I
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 284
    .end local v1    # "XValueLeng":I
    .end local v4    # "i":I
    :cond_1
    const/16 v1, 0x1e

    goto :goto_0

    .line 299
    .restart local v1    # "XValueLeng":I
    .restart local v4    # "i":I
    :cond_2
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/LineChart;->getWidth()I

    move-result v5

    .line 300
    .local v5, "mWidth":I
    int-to-float v11, v1

    const/high16 v12, 0x41f00000    # 30.0f

    div-float v0, v11, v12

    .line 301
    .local v0, "XScale":F
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/LineChart;->fitScreen()V

    .line 302
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v5

    const/4 v14, 0x0

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/github/mikephil/charting/charts/LineChart;->zoom(FFFF)V

    .line 307
    new-instance v7, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v11, "DataSet 1"

    invoke-direct {v7, v8, v11}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 310
    .local v7, "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCubic(Z)V

    .line 311
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 313
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 315
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0065

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 317
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 319
    const/high16 v11, 0x40400000    # 3.0f

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleSize(F)V

    .line 320
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHighlightIndicators(Z)V

    .line 321
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 324
    new-instance v3, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v3, v10, v7}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 325
    .local v3, "data":Lcom/github/mikephil/charting/data/LineData;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 326
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v11, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 328
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_continue:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 974
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 976
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_finish:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 977
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 979
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 980
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 982
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_continue1:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 983
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 985
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_finish1:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 986
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 988
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start1:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 989
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 992
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 993
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 995
    const v0, 0x7f0e0287

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 996
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 1006
    return-void
.end method

.method private setRunInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1231
    const-string v3, "%05d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1232
    .local v2, "strTime":Ljava/lang/String;
    const-string v3, "%05d"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1233
    .local v1, "strDistance":Ljava/lang/String;
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1234
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 1235
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0, v2, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->setRunInfo(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v4}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 1236
    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1238
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_0
    return-void
.end method

.method private showExitDialog()V
    .locals 7

    .prologue
    .line 1460
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1461
    .local v2, "inflaterDl":Landroid/view/LayoutInflater;
    const v5, 0x7f040073

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1462
    .local v3, "layout":Landroid/widget/RelativeLayout;
    const v5, 0x7f0e025d

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1465
    .local v4, "tvInfo":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_1

    .line 1466
    const v5, 0x7f080102

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1471
    :goto_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exitDlg:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exitDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1472
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exitDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1477
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exitDlg:Landroid/app/AlertDialog;

    .line 1478
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exitDlg:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1480
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exitDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1481
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->exitDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 1485
    const v5, 0x7f0e025b

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1486
    .local v0, "btnCancel":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$13;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$13;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1497
    const v5, 0x7f0e025e

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1498
    .local v1, "btnOK":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$14;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$14;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1506
    return-void

    .line 1468
    .end local v0    # "btnCancel":Landroid/widget/RelativeLayout;
    .end local v1    # "btnOK":Landroid/widget/RelativeLayout;
    :cond_1
    const v5, 0x7f080101

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showMissingPermissionError()V
    .locals 3

    .prologue
    .line 753
    const/4 v0, 0x1

    .line 754
    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->newInstance(Z)Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method private startRun()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1102
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1103
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1104
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->layoutCount:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1112
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bRun:Z

    .line 1113
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    .line 1117
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->startRecord()V

    .line 1118
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->addListener(Landroid/location/LocationListener;)V

    .line 1119
    return-void
.end method

.method private startRunCount()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1055
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->layoutCount:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1056
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ResetRunInfo()V

    .line 1057
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->beginToRun()V

    .line 1058
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start1:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1059
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1060
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->setChartData()V

    .line 1061
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1063
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1064
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$11;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1098
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_count:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1099
    return-void
.end method

.method private stopRun()Lrx/Observable;
    .locals 4
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
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1191
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setVisibility(I)V

    .line 1192
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->linearLayoutFinish:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1193
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->linearLayoutFinish1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1194
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->slidePause1:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->setVisibility(I)V

    .line 1195
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1196
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_start1:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1199
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->stopRecord()V

    .line 1201
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    .line 1203
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1204
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 1205
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->stopRun()Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    .line 1207
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method private updataUI()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 942
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 943
    .local v0, "time_second":J
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_time_escape:Landroid/widget/TextView;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->formatTimeString1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_duration:Landroid/widget/TextView;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->formatTimeString1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_distance:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToStringForRun(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_distance:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToStringForRun(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_speed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getPace()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatPaceToString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_calorie:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getCalorie()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->tv_speed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getPace()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatPaceToString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->isGpsEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 961
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    const v3, 0x7f02019d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 965
    :goto_0
    return-void

    .line 963
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->iv_gps_enable:Landroid/widget/ImageView;

    const v3, 0x7f02019c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateData()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 929
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->runStep:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStepCount(Ljava/lang/Integer;)V

    .line 930
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

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

    .line 931
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setEndTime(Ljava/util/Date;)V

    .line 933
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 934
    .local v2, "timeEscape":J
    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mUseSecond:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 935
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-double v4, v4

    div-double/2addr v4, v12

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getPace(DI)D

    move-result-wide v0

    .line 936
    .local v0, "pace":D
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v0

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setPace(Ljava/lang/Integer;)V

    .line 937
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->runStep:Ljava/lang/Integer;

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

    .line 938
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

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

    .line 939
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 188
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    const v2, 0x7f040098

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->setContentView(I)V

    .line 191
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mContext:Landroid/content/Context;

    .line 193
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->dataInit()V

    .line 194
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->initView()V

    .line 196
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->checkGps()V

    .line 197
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->setListener()V

    .line 198
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->initBaiDuMap()V

    .line 200
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->initChart()V

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "broadcast_notify_message"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v0}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v1

    .line 205
    .local v1, "stepObservable":Lrx/Observable;, "Lrx/Observable<Landroid/content/Intent;>;"
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 216
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 217
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 1448
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 1449
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    .line 1450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    .line 1451
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->myPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1455
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1456
    return-void
.end method

.method public onHeartReaded(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 333
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    if-eqz v1, :cond_0

    .line 352
    :goto_0
    return-void

    .line 337
    :cond_0
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->count:I

    .line 338
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->count:I

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_1

    .line 339
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 340
    .local v0, "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setTime(Ljava/util/Date;)V

    .line 341
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_RUNTIME:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setType(Ljava/lang/Integer;)V

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setValue(Ljava/lang/Integer;)V

    .line 343
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 344
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setSync(Ljava/lang/Boolean;)V

    .line 345
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v0    # "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ShowheartRateList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->setChartData()V

    .line 349
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

    .line 351
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->content_heartrate:Landroid/widget/TextView;

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

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1395
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->layoutCount:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->ExitFinish()V

    .line 1399
    :cond_0
    const/4 v0, 0x1

    .line 1401
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->bPause:Z

    if-eqz v0, :cond_0

    .line 767
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getDistance()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->distance:I

    .line 765
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

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

    .line 766
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->distance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setDistance(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    .line 1422
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1423
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1417
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1412
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

    .line 725
    if-eq p1, v1, :cond_0

    .line 737
    :goto_0
    return-void

    .line 729
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p2, p3, v0}, Lcom/meizu/smart/wristband/utils/PermissionUtils;->isPermissionGranted([Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->enableMyLocation()V

    goto :goto_0

    .line 735
    :cond_1
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mPermissionDenied:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    .line 1428
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1429
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .prologue
    .line 741
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResumeFragments()V

    .line 742
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mPermissionDenied:Z

    if-eqz v0, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->showMissingPermissionError()V

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->mPermissionDenied:Z

    .line 747
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1407
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1384
    :goto_0
    return v1

    .line 1375
    :pswitch_0
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->isdown:Z

    .line 1377
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->doOnActionDown()V

    goto :goto_0

    .line 1380
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->isdown:Z

    .line 1381
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->doOnActionUp()V

    goto :goto_0

    .line 1373
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
    .line 1526
    .local p1, "inPoint":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1530
    .local v10, "size":I
    const/4 v11, 0x5

    if-ge v10, v11, :cond_0

    .line 1553
    :goto_0
    return-object p1

    .line 1533
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

    .line 1534
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

    .line 1535
    .local v8, "longitude":D
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1536
    .local v2, "latLng0":Lcom/baidu/mapapi/model/LatLng;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1538
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

    .line 1539
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

    .line 1540
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1541
    .local v3, "latLng1":Lcom/baidu/mapapi/model/LatLng;
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1543
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

    .line 1544
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

    .line 1545
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1546
    .local v4, "latLng2":Lcom/baidu/mapapi/model/LatLng;
    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1548
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

    .line 1549
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

    .line 1550
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1551
    .local v5, "latLng3":Lcom/baidu/mapapi/model/LatLng;
    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
