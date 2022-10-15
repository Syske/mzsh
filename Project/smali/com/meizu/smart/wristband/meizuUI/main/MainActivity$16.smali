.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->settingGoogleFit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$16;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play services connection failed. Cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1051
    return-void
.end method
