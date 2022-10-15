.class final Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;
.super Ljava/lang/Object;
.source "ModelSettingManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelSettingManager;->commitMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;->val$finalDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 391
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;->val$finalDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;->val$finalDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setSync(Ljava/lang/Boolean;)V

    .line 394
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;->val$finalDev:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->createOrUpdateDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 388
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$7;->call(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
