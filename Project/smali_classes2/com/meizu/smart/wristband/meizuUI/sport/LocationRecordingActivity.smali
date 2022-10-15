.class public Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LocationRecordingActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field protected locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;->locationManager:Landroid/location/LocationManager;

    .line 34
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 46
    const-string v0, "begin to requestLocationUpdates"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 48
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "broadcast_notify_message"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v6}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v7

    .line 50
    .local v7, "stepObservable":Lrx/Observable;, "Lrx/Observable<Landroid/content/Intent;>;"
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingActivity;)V

    invoke-virtual {v7, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0
.end method

.method public onHeartReaded(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged to requestLocationUpdates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 73
    return-void
.end method
