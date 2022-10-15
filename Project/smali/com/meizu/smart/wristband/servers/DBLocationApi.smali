.class public Lcom/meizu/smart/wristband/servers/DBLocationApi;
.super Ljava/lang/Object;
.source "DBLocationApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocations(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;-><init>(Landroid/content/Context;)V

    .line 20
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/LocationServer;
    invoke-virtual {v1, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->getLocations(Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 25
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/LocationServer;
    :goto_0
    return-object v2

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 25
    const/4 v2, 0x0

    goto :goto_0
.end method
