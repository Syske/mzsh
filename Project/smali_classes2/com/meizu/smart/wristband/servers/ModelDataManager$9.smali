.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$9;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$sportList:Ljava/util/List;

.field final synthetic val$sportServer:Lcom/meizu/smart/wristband/models/database/servers/SportServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$9;->val$sportServer:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$9;->val$sportList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 448
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$9;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "getGolddatas":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/GetGolddata;>;"
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$9;->val$sportServer:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$9;->val$sportList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->updateSport(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
