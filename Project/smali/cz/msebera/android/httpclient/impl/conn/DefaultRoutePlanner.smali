.class public Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultRoutePlanner.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private final schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V
    .locals 0
    .param p1, "schemePortResolver"    # Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    .end local p1    # "schemePortResolver":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 60
    return-void

    .line 58
    .restart local p1    # "schemePortResolver":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    goto :goto_0
.end method


# virtual methods
.method protected determineProxy(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpHost;
    .locals 1
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 10
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v7, "Target host"

    invoke-static {p1, v7}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    const-string v7, "Request"

    invoke-static {p2, v7}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 69
    .local v0, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v1

    .line 70
    .local v1, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 71
    .local v3, "local":Ljava/net/InetAddress;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getProxy()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    .line 72
    .local v4, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v4, :cond_0

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;->determineProxy(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v7

    if-gtz v7, :cond_1

    .line 79
    :try_start_0
    new-instance v6, Lcz/msebera/android/httpclient/HttpHost;

    .line 80
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 81
    invoke-interface {v8, p1}, Lcz/msebera/android/httpclient/conn/SchemePortResolver;->resolve(Lcz/msebera/android/httpclient/HttpHost;)I

    move-result v8

    .line 82
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v6, "target":Lcz/msebera/android/httpclient/HttpHost;
    :goto_0
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 90
    .local v5, "secure":Z
    if-nez v4, :cond_2

    .line 91
    new-instance v7, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v7, v6, v3, v5}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Z)V

    .line 93
    :goto_1
    return-object v7

    .line 83
    .end local v5    # "secure":Z
    .end local v6    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "ex":Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;
    new-instance v7, Lcz/msebera/android/httpclient/HttpException;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 87
    .end local v2    # "ex":Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;
    :cond_1
    move-object v6, p1

    .restart local v6    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto :goto_0

    .line 93
    .restart local v5    # "secure":Z
    :cond_2
    new-instance v7, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v7, v6, v3, v4, v5}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;Z)V

    goto :goto_1
.end method
