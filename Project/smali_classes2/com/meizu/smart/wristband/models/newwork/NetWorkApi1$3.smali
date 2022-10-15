.class final Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;
.super Ljava/lang/Object;
.source "NetWorkApi1.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$req:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->val$req:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->val$req:Lcom/meizu/smart/wristband/models/newwork/request/RequestEntity;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;

    invoke-direct {v3, p0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;-><init>(Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;Lrx/Subscriber;)V

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->executeCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/TextHttpResponseHandler;)V

    .line 157
    return-void
.end method
