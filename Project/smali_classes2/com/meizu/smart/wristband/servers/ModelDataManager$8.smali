.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$8;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadSportData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
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
        "Ljava/util/List",
        "<",
        "Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "getGolddatas":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 457
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$8;->call(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
