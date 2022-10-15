.class public Lcom/meizu/smart/wristband/models/googlefit/Googlefit;
.super Ljava/lang/Object;
.source "Googlefit.java"


# static fields
.field private static final GOOGLE_SWITCH_ON:Ljava/lang/String; = "GOOGLE_SWITCH_ON_FLAG"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static buildFitnessClient1(Landroid/content/Context;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientID"    # I
    .param p2, "callbacks"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    .line 38
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/fitness/Fitness;->HISTORY_API:Lcom/google/android/gms/common/api/Api;

    .line 39
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .end local p0    # "context":Landroid/content/Context;
    new-instance v2, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$1;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$1;-><init>()V

    .line 43
    invoke-virtual {v1, p0, p1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 51
    .local v0, "mClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    return-object v0
.end method

.method public static isGoogleFitEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const-string v1, "GOOGLE_SWITCH_ON_FLAG"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "flag":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static setGoogleFitEnable(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 177
    const-string v1, "GOOGLE_SWITCH_ON_FLAG"

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->setValueAtKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 177
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static writeStep(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lrx/Observable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    sget-object v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->TAG:Ljava/lang/String;

    const-string v1, "begin to writeStep google fit 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    .line 167
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
