.class final Lcom/meizu/smart/wristband/servers/ModelSettingManager$2;
.super Ljava/lang/Object;
.source "ModelSettingManager.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V
    .locals 3
    .param p1, "gainEvent"    # Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, "versionServer":Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->save(Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "versionServer":Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$2;->call(Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V

    return-void
.end method
