.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->saveAim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 538
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 541
    const-string v1, "network error,no save sport aim"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sportAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$800(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "01"

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getGoalRemindString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const-string v1, "\u8fd0\u52a8\u76ee\u6807\u5f00\u5173\u5f00\u542f\uff0c\u540c\u6b65\u76ee\u6807\u5230\u624b\u73af"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/servers/BleServer;->setSportAim()Lrx/Observable;

    .line 547
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_AIM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 549
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->refreshSportAim()V

    .line 551
    return-void
.end method
