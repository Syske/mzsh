.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->gotoOTA(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lrx/Observable",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

.field final synthetic val$event:Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

.field final synthetic val$productName:Ljava/lang/String;

.field final synthetic val$user:Lcom/meizu/smart/wristband/models/database/entity/User;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->val$event:Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->val$productName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 537
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 3
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->val$event:Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$12;->val$productName:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/smart/wristband/constant/Producter;->deviceTypeToManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->fetchLatestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
