.class public Lcom/meizu/smart/wristband/utils/loadfile/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 29
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 30
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v4, 0xbb8

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 32
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 39
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 40
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 43
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getContentByPost(Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonstr"    # Ljava/lang/String;
    .param p2, "iszip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "data":[B
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 60
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 61
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v7, 0xbb8

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, "postentity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 68
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 69
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 70
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 71
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 72
    :cond_0
    return-object v1
.end method
