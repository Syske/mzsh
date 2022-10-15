.class final Lcom/meizu/smart/wristband/servers/ModelSettingManager$4;
.super Ljava/lang/Object;
.source "ModelSettingManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelSettingManager;->fetchLatestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/meizu/smart/wristband/models/newwork/response/VersionData;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    check-cast p1, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$4;->call(Lcom/meizu/smart/wristband/models/newwork/response/VersionData;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/meizu/smart/wristband/models/newwork/response/VersionData;)Lrx/Observable;
    .locals 1
    .param p1, "versionData"    # Lcom/meizu/smart/wristband/models/newwork/response/VersionData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/newwork/response/VersionData;",
            ")",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;->getDeviceVer()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/newwork/response/VersionData;->getDeviceVer()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
