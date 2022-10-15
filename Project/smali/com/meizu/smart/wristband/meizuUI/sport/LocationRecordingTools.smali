.class public Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;
.super Ljava/lang/Object;
.source "LocationRecordingTools.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static instance:Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;


# instance fields
.field private bPause:Z

.field private final context:Landroid/content/Context;

.field private distance:F

.field private listteners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationManager:Landroid/location/LocationManager;

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->bPause:Z

    .line 38
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->listteners:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->instance:Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->instance:Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    .line 34
    :cond_0
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->instance:Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    return-object v0
.end method


# virtual methods
.method public addListener(Landroid/location/LocationListener;)V
    .locals 1
    .param p1, "locationListener"    # Landroid/location/LocationListener;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->listteners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public deleteListener(Landroid/location/LocationListener;)V
    .locals 1
    .param p1, "locationListener"    # Landroid/location/LocationListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->listteners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->distance:F

    return v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 132
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->bPause:Z

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v1, "recordList.add(location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 139
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->distance:F

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->distance:F

    .line 140
    const-string v1, "distance +="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->distance:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->listteners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 144
    .local v0, "listener":Landroid/location/LocationListener;
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    return-void
.end method

.method public pauseRecord()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->bPause:Z

    .line 124
    return-void
.end method

.method public resumeRecord()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->bPause:Z

    .line 128
    return-void
.end method

.method public startRecord()V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->locationManager:Landroid/location/LocationManager;

    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->listteners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->listteners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->distance:F

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->bPause:Z

    .line 101
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method
