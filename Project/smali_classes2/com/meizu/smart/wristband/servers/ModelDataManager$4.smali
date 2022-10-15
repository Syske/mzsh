.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$4;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager;->downloadAllHistory(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lrx/Observable;
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
        "Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$progressSubject:Lrx/subjects/BehaviorSubject;


# direct methods
.method constructor <init>(Lrx/subjects/BehaviorSubject;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$4;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$4;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 143
    const-class v1, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    .line 144
    .local v0, "entity":Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$4;->call(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-result-object v0

    return-object v0
.end method
