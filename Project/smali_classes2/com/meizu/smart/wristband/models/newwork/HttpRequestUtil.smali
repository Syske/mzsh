.class public Lcom/meizu/smart/wristband/models/newwork/HttpRequestUtil;
.super Ljava/lang/Object;
.source "HttpRequestUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 279
    .local v1, "data":[B
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 280
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 281
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 282
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 283
    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text/xml; charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v4, "Content-Length"

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 286
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 287
    .local v2, "outStream":Ljava/io/OutputStream;
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 288
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 289
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 290
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/models/newwork/HttpRequestUtil;->read2Byte(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 293
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static read2Byte(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .local v2, "outSteam":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 240
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 241
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 245
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 246
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static read2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    .local v2, "outSteam":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 259
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 260
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 261
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 264
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 265
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public static sendGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/URLConnection;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 47
    .local v3, "entrys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 48
    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&"

    .line 53
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 55
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send get url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 58
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, "url1":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 60
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 63
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 64
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 69
    return-object v1
.end method

.method public static sendPostRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/URLConnection;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 87
    .local v3, "entrys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 89
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "&"

    .line 92
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    .local v5, "url1":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 98
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 99
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 100
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 101
    .local v4, "out":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 102
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 103
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 104
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 109
    return-object v1
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/util/Map;Lcom/meizu/smart/wristband/models/newwork/FormFile;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/meizu/smart/wristband/models/newwork/FormFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meizu/smart/wristband/models/newwork/FormFile;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/meizu/smart/wristband/models/newwork/FormFile;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/meizu/smart/wristband/models/newwork/HttpRequestUtil;->uploadFiles(Ljava/lang/String;Ljava/util/Map;[Lcom/meizu/smart/wristband/models/newwork/FormFile;)Z

    move-result v0

    return v0
.end method

.method public static uploadFiles(Ljava/lang/String;Ljava/util/Map;[Lcom/meizu/smart/wristband/models/newwork/FormFile;)Z
    .locals 34
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "files"    # [Lcom/meizu/smart/wristband/models/newwork/FormFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/meizu/smart/wristband/models/newwork/FormFile;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "---------------------------7da2137580612"

    .line 126
    .local v4, "BOUNDARY":Ljava/lang/String;
    const-string v11, "-----------------------------7da2137580612--\r\n"

    .line 128
    .local v11, "endline":Ljava/lang/String;
    const/4 v13, 0x0

    .line 129
    .local v13, "fileDataLength":I
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 130
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v28, v0

    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    aget-object v25, p2, v27

    .line 131
    .local v25, "uploadFile":Lcom/meizu/smart/wristband/models/newwork/FormFile;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v15, "fileExplain":Ljava/lang/StringBuilder;
    const-string v29, "--"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v29, "---------------------------7da2137580612"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v29, "\r\n"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Disposition: form-data;name=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getParameterName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\";filename=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getFilname()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\"\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Type: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getContentType()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\r\n\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v29, "\r\n"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    add-int v13, v13, v29

    .line 139
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 140
    int-to-long v0, v13

    move-wide/from16 v30, v0

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->length()J

    move-result-wide v32

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v13, v0

    .line 130
    :goto_1
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 142
    :cond_0
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getData()[B

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int v13, v13, v29

    goto :goto_1

    .line 146
    .end local v15    # "fileExplain":Ljava/lang/StringBuilder;
    .end local v25    # "uploadFile":Lcom/meizu/smart/wristband/models/newwork/FormFile;
    :cond_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v24, "textEntity":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_2

    .line 148
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 149
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v27, "--"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v27, "---------------------------7da2137580612"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v27, "\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "\"\r\n\r\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v27, "\r\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 158
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v27, v27, v13

    const-string v28, "-----------------------------7da2137580612--\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int v10, v27, v28

    .line 160
    .local v10, "dataLength":I
    new-instance v26, Ljava/net/URL;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    .local v26, "url":Ljava/net/URL;
    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getPort()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    const/16 v20, 0x50

    .line 162
    .local v20, "port":I
    :goto_3
    new-instance v23, Ljava/net/Socket;

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 163
    .local v23, "socket":Ljava/net/Socket;
    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 165
    .local v19, "outStream":Ljava/io/OutputStream;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "POST "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " HTTP/1.1\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 166
    .local v22, "requestmethod":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 167
    const-string v5, "Accept: image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*\r\n"

    .line 168
    .local v5, "accept":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 169
    const-string v17, "Accept-Language: zh-CN\r\n"

    .line 170
    .local v17, "language":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 171
    const-string v9, "Content-Type: multipart/form-data; boundary=---------------------------7da2137580612\r\n"

    .line 172
    .local v9, "contenttype":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 173
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Content-Length: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, "contentlength":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    const-string v6, "Connection: Keep-Alive\r\n"

    .line 176
    .local v6, "alive":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 177
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Host: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\r\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 178
    .local v16, "host":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 180
    const-string v27, "\r\n"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 182
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 184
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 185
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v28, v0

    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    aget-object v25, p2, v27

    .line 186
    .restart local v25    # "uploadFile":Lcom/meizu/smart/wristband/models/newwork/FormFile;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v14, "fileEntity":Ljava/lang/StringBuilder;
    const-string v29, "--"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v29, "---------------------------7da2137580612"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v29, "\r\n"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Disposition: form-data;name=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getParameterName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\";filename=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getFilname()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\"\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content-Type: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getContentType()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\r\n\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 193
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v29

    if-eqz v29, :cond_5

    .line 194
    const/16 v29, 0x400

    move/from16 v0, v29

    new-array v7, v0, [B

    .line 195
    .local v7, "buffer":[B
    const/16 v18, 0x0

    .line 196
    .local v18, "len":I
    :goto_5
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x400

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    const/16 v29, -0x1

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    .line 197
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 161
    .end local v5    # "accept":Ljava/lang/String;
    .end local v6    # "alive":Ljava/lang/String;
    .end local v7    # "buffer":[B
    .end local v8    # "contentlength":Ljava/lang/String;
    .end local v9    # "contenttype":Ljava/lang/String;
    .end local v14    # "fileEntity":Ljava/lang/StringBuilder;
    .end local v16    # "host":Ljava/lang/String;
    .end local v17    # "language":Ljava/lang/String;
    .end local v18    # "len":I
    .end local v19    # "outStream":Ljava/io/OutputStream;
    .end local v20    # "port":I
    .end local v22    # "requestmethod":Ljava/lang/String;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v25    # "uploadFile":Lcom/meizu/smart/wristband/models/newwork/FormFile;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getPort()I

    move-result v20

    goto/16 :goto_3

    .line 199
    .restart local v5    # "accept":Ljava/lang/String;
    .restart local v6    # "alive":Ljava/lang/String;
    .restart local v7    # "buffer":[B
    .restart local v8    # "contentlength":Ljava/lang/String;
    .restart local v9    # "contenttype":Ljava/lang/String;
    .restart local v14    # "fileEntity":Ljava/lang/StringBuilder;
    .restart local v16    # "host":Ljava/lang/String;
    .restart local v17    # "language":Ljava/lang/String;
    .restart local v18    # "len":I
    .restart local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v20    # "port":I
    .restart local v22    # "requestmethod":Ljava/lang/String;
    .restart local v23    # "socket":Ljava/net/Socket;
    .restart local v25    # "uploadFile":Lcom/meizu/smart/wristband/models/newwork/FormFile;
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/InputStream;->close()V

    .line 203
    .end local v7    # "buffer":[B
    .end local v18    # "len":I
    :goto_6
    const-string v29, "\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 185
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_4

    .line 201
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getData()[B

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/smart/wristband/models/newwork/FormFile;->getData()[B

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 207
    .end local v14    # "fileEntity":Ljava/lang/StringBuilder;
    .end local v25    # "uploadFile":Lcom/meizu/smart/wristband/models/newwork/FormFile;
    :cond_6
    const-string v27, "-----------------------------7da2137580612--\r\n"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 208
    new-instance v21, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/InputStreamReader;

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 209
    .local v21, "reader":Ljava/io/BufferedReader;
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    const-string v28, "200"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 210
    const/16 v27, 0x0

    .line 216
    :goto_7
    return v27

    .line 212
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 213
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 214
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->close()V

    .line 215
    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->close()V

    .line 216
    const/16 v27, 0x1

    goto :goto_7
.end method
