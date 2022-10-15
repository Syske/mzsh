.class final Lcom/meizu/smart/wristband/servers/ModelSettingManager$3;
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
        "Ljava/lang/Object;",
        "Lrx/Observable",
        "<+",
        "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$3;->call(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lrx/Observable;
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Observable",
            "<+",
            "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v3, p1

    check-cast v3, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

    .line 103
    .local v3, "item":Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;
    :try_start_0
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$3;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    const-string v5, "%03d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getManufCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "02"

    invoke-virtual {v4, v5, v6}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v2

    .line 104
    .local v2, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    const/4 v0, 0x0

    .line 107
    .local v0, "b":Z
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getVer()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 109
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->access$000(Ljava/lang/String;)Z

    move-result v0

    .line 112
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6587\u4ef6\u662f\u5426\u5b58\u5728 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 113
    if-nez v0, :cond_1

    .line 114
    invoke-static {v3}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->downVersionFile(Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;)Lrx/Observable;

    move-result-object v4

    .line 121
    .end local v0    # "b":Z
    .end local v2    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :goto_0
    return-object v4

    .line 116
    .restart local v0    # "b":Z
    .restart local v2    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :cond_1
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 118
    .end local v0    # "b":Z
    .end local v2    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 121
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v4

    goto :goto_0
.end method
