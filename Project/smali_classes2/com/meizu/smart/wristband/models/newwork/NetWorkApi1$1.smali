.class final Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$1;
.super Ljava/lang/Object;
.source "NetWorkApi1.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->checkResponse(Ljava/lang/String;)Lrx/Observable;
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
.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
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
    .line 84
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$1;->val$s:Ljava/lang/String;

    .line 85
    .local v0, "responseBody":Ljava/lang/String;
    invoke-static {v0}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/CompressUtil;->unGZip([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 87
    invoke-static {v3}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i1(Ljava/lang/String;)V

    .line 90
    const-class v3, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;

    .line 91
    .local v1, "responseEntity":Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;
    const-string v3, "001"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->getStateCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 100
    .end local v1    # "responseEntity":Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 101
    return-void

    .line 95
    .restart local v1    # "responseEntity":Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/Throwable;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v1    # "responseEntity":Lcom/meizu/smart/wristband/models/newwork/response/ResponseEntity;
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\u9519\u8bef\u7684\u53c2\u6570"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
