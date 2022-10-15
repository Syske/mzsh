.class final Lcom/meizu/smart/wristband/servers/ModelUserManager$6;
.super Ljava/lang/Object;
.source "ModelUserManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitSleepAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
        "Ljava/lang/Boolean;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$6;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "01"

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getGoalRemindString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getGoalRemindString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    const-string v0, "\u8fd0\u52a8\u76ee\u6807\u5f00\u5173\u5f00\u542f\uff0c\u540c\u6b65\u76ee\u6807\u5230\u624b\u73af"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->setSportAim()Lrx/Observable;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
