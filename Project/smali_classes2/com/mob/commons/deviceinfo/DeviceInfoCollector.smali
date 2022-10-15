.class public Lcom/mob/commons/deviceinfo/DeviceInfoCollector;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Lcom/mob/tools/utils/Hashon;

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/Random;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d:Lcom/mob/tools/utils/Hashon;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->f:Ljava/util/Random;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/mob/commons/deviceinfo/a;

    invoke-direct {v0, p0}, Lcom/mob/commons/deviceinfo/a;-><init>(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)V

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a(Landroid/location/Location;I)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "LOCATION"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datetime"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/g;->a(Landroid/content/Context;)Lcom/mob/commons/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mob/commons/g;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)Lcom/mob/tools/utils/DeviceHelper;
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    return-object v0
.end method

.method private b()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phonename"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBluetoothName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "signmd5"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSignMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wifi"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ssid"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bssid"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "type"

    const-string v4, "DEVEXT"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datetime"

    iget-object v3, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/g;->a(Landroid/content/Context;)Lcom/mob/commons/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mob/commons/g;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mob/commons/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)Lcom/mob/tools/utils/Hashon;
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d:Lcom/mob/tools/utils/Hashon;

    return-object v0
.end method

.method private c()Z
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/commons/k;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v2, v4, :cond_0

    if-ne v3, v5, :cond_0

    if-eq v1, v6, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 7

    sget-object v1, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ssid"

    iget-object v3, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bssid"

    iget-object v3, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "type"

    const-string v4, "WIFI_INFO"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v4

    const-string v3, "datetime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/commons/g;->a(Landroid/content/Context;)Lcom/mob/commons/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/commons/g;->a(Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2, v4, v5}, Lcom/mob/commons/k;->a(Landroid/content/Context;J)V

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mob/commons/k;->b(Landroid/content/Context;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d()V

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    new-instance v2, Lcom/mob/commons/deviceinfo/c;

    invoke-direct {v2, p0}, Lcom/mob/commons/deviceinfo/c;-><init>(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f()V
    .locals 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v2, "carrier"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simopname"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lac"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCellLac()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cell"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "BSINFO"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "datetime"

    iget-object v3, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/g;->a(Landroid/content/Context;)Lcom/mob/commons/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/commons/g;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/commons/k;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->j(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/mob/commons/k;->b(Landroid/content/Context;J)V

    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private g()Z
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v2, "carrier"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simopname"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lac"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCellLac()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cell"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getCellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/commons/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized startCollector(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-direct {v0, p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    sget-object v0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-direct {v0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    const/16 v8, 0x78

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d()V

    :cond_1
    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->f()V

    :cond_2
    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->f:Ljava/util/Random;

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    iget-object v1, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->j(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->b(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->f()V

    :cond_4
    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->f:Ljava/util/Random;

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    iget-object v1, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v6, v2}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->a(Landroid/location/Location;I)V

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c:Lcom/mob/tools/utils/DeviceHelper;

    const/16 v1, 0xf

    invoke-virtual {v0, v6, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->a(Landroid/location/Location;I)V

    :cond_5
    iget-object v0, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->e:Landroid/os/Handler;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/commons/a;->l(Landroid/content/Context;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
