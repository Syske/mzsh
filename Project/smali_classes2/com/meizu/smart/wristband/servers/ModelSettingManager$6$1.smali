.class Lcom/meizu/smart/wristband/servers/ModelSettingManager$6$1;
.super Ljava/lang/Object;
.source "ModelSettingManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->call(Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/Other;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/Object;
    .locals 4
    .param p1, "other"    # Lcom/meizu/smart/wristband/models/database/entity/Other;

    .prologue
    const/4 v3, 0x1

    .line 341
    if-nez p1, :cond_0

    .line 342
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 350
    :goto_0
    return-object v2

    .line 343
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setSync(Ljava/lang/Boolean;)V

    .line 345
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;

    iget-object v2, v2, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V

    .line 346
    .local v1, "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->update(Lcom/meizu/smart/wristband/models/database/entity/Other;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v1    # "otherServer":Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    check-cast p1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6$1;->call(Lcom/meizu/smart/wristband/models/database/entity/Other;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
