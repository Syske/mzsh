.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$12;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadAutoSleepData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
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
        "Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string v1, "commitAutoSleepData = s"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 518
    const-class v1, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;

    .line 519
    .local v0, "entities":Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 514
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$12;->call(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;

    move-result-object v0

    return-object v0
.end method
