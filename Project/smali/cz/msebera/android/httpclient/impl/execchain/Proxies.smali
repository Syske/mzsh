.class Lcz/msebera/android/httpclient/impl/execchain/Proxies;
.super Ljava/lang/Object;
.source "Proxies.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enhanceEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 6
    .param p0, "request"    # Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    .prologue
    .line 48
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 49
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/execchain/Proxies;->isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    const-class v2, Lcz/msebera/android/httpclient/HttpEntity;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcz/msebera/android/httpclient/HttpEntity;

    aput-object v5, v3, v4

    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;

    invoke-direct {v4, v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 50
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpEntity;

    .line 54
    .local v1, "proxy":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 56
    .end local v1    # "proxy":Lcz/msebera/android/httpclient/HttpEntity;
    :cond_0
    return-void
.end method

.method public static enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 4
    .param p0, "original"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p1, "connHolder"    # Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    .prologue
    .line 87
    const-class v0, Lcz/msebera/android/httpclient/impl/execchain/ResponseProxyHandler;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    aput-object v3, v1, v2

    new-instance v2, Lcz/msebera/android/httpclient/impl/execchain/ResponseProxyHandler;

    invoke-direct {v2, p0, p1}, Lcz/msebera/android/httpclient/impl/execchain/ResponseProxyHandler;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    .line 87
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    return-object v0
.end method

.method static isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z
    .locals 2
    .param p0, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 61
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    instance-of v1, v0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;

    .line 63
    .end local v0    # "handler":Ljava/lang/reflect/InvocationHandler;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isRepeatable(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 4
    .param p0, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .prologue
    const/4 v2, 0x1

    .line 68
    instance-of v3, p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_0

    .line 69
    check-cast p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    .end local p0    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 70
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/execchain/Proxies;->isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;

    .line 74
    .local v1, "handler":Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->isConsumed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    .end local v1    # "handler":Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;
    :cond_0
    :goto_0
    return v2

    .line 78
    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v2

    goto :goto_0
.end method
