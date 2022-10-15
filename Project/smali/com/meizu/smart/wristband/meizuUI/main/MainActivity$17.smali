.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


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
    .line 1036
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$17;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1039
    const-string v0, "google fit onConnected"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1044
    const-string v0, "google fit onConnectionSuspended"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1045
    return-void
.end method
