.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;
.super Ljava/lang/Object;
.source "NewBindActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->gotoOTA(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

.field final synthetic val$productName:Ljava/lang/String;

.field final synthetic val$versionServer:Lcom/meizu/smart/wristband/models/database/servers/VersionServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/models/database/servers/VersionServer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;->val$versionServer:Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;->val$productName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;->call(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 5
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;->val$versionServer:Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$8;->val$productName:Ljava/lang/String;

    invoke-static {v3}, Lcom/meizu/smart/wristband/constant/Producter;->deviceTypeToManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "02"

    invoke-virtual {v2, v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v1

    .line 264
    .local v1, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 269
    .end local v1    # "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :goto_0
    return-object v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 269
    const/4 v2, 0x0

    goto :goto_0
.end method
