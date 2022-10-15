.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$16;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager;->saveRunSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;Ljava/util/ArrayList;Ljava/util/List;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$heartRateList:Ljava/util/ArrayList;

.field final synthetic val$locationList:Ljava/util/List;

.field final synthetic val$sportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

.field final synthetic val$user:Lcom/meizu/smart/wristband/models/database/entity/User;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iput-object p3, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$sportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iput-object p4, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$heartRateList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$locationList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 736
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 737
    .local v3, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 738
    .local v1, "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;-><init>(Landroid/content/Context;)V

    .line 740
    .local v2, "locationServer":Lcom/meizu/smart/wristband/models/database/servers/LocationServer;
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$sportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->saveRealSport(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;)V

    .line 741
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$heartRateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->saveSportHeartRate(Ljava/util/List;)Z

    .line 742
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$locationList:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->saveLocations(Ljava/util/List;)V

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save sport data okheartRate size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->val$heartRateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 744
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 750
    .end local v1    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v2    # "locationServer":Lcom/meizu/smart/wristband/models/database/servers/LocationServer;
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :goto_0
    return-object v4

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save sport data error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 750
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
