.class Lcom/meizu/smart/wristband/models/database/servers/LocationServer$1;
.super Ljava/lang/Object;
.source "LocationServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->saveLocations(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/database/servers/LocationServer;

.field final synthetic val$locations:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/database/servers/LocationServer;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/database/servers/LocationServer;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer$1;->this$0:Lcom/meizu/smart/wristband/models/database/servers/LocationServer;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer$1;->val$locations:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer$1;->val$locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    .line 82
    .local v0, "location":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer$1;->this$0:Lcom/meizu/smart/wristband/models/database/servers/LocationServer;

    invoke-static {v2}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->access$000(Lcom/meizu/smart/wristband/models/database/servers/LocationServer;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0

    .line 84
    .end local v0    # "location":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
