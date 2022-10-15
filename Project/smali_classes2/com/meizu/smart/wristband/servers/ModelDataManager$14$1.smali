.class Lcom/meizu/smart/wristband/servers/ModelDataManager$14$1;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager$14;->call(Ljava/lang/Boolean;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$14;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/ModelDataManager$14;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/ModelDataManager$14;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$14$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 638
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$14$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$14;

    iget-object v2, v2, Lcom/meizu/smart/wristband/servers/ModelDataManager$14;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 639
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$14$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$14;

    iget-object v2, v2, Lcom/meizu/smart/wristband/servers/ModelDataManager$14;->val$heartRateList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->saveSyncHeartRate(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$14$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
