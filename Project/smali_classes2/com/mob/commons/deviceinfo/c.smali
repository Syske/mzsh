.class Lcom/mob/commons/deviceinfo/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;


# direct methods
.method constructor <init>(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/deviceinfo/c;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ssid"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/c;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-static {v2}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bssid"

    iget-object v2, p0, Lcom/mob/commons/deviceinfo/c;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-static {v2}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->b(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mob/commons/deviceinfo/c;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-static {v1}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->c(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/mob/commons/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {p1}, Lcom/mob/commons/a;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/commons/deviceinfo/c;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-static {v0}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->d(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)V

    goto :goto_0
.end method
