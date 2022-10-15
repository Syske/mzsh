.class Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;
.super Ljava/lang/Object;
.source "CloseableHttpResponseProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final original:Lcz/msebera/android/httpclient/HttpResponse;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 0
    .param p1, "original"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    .line 53
    return-void
.end method

.method public static newProxy(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 4
    .param p0, "original"    # Lcz/msebera/android/httpclient/HttpResponse;

    .prologue
    .line 81
    const-class v0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    aput-object v3, v1, v2

    new-instance v2, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;

    invoke-direct {v2, p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 81
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 57
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 58
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "mname":Ljava/lang/String;
    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->close()V

    .line 65
    const/4 v3, 0x0

    .line 68
    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 71
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 72
    throw v0

    .line 74
    :cond_1
    throw v1
.end method
