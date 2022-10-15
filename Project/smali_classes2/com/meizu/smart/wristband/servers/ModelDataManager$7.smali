.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$7;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadGooglefitData(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sportList:Ljava/util/List;

.field final synthetic val$sportServer:Lcom/meizu/smart/wristband/models/database/servers/SportServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$7;->val$sportServer:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$7;->val$sportList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 389
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$7;->val$sportServer:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$7;->val$sportList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->updateGoogleFitSport(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$7;->call(Ljava/lang/Boolean;)V

    return-void
.end method
