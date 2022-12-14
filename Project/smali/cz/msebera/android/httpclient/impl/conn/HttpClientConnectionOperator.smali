.class Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;
.super Ljava/lang/Object;
.source "HttpClientConnectionOperator.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field static final SOCKET_FACTORY_REGISTRY:Ljava/lang/String; = "http.socket-factory-registry"


# instance fields
.field private final dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

.field private final socketFactoryRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 2
    .param p2, "schemePortResolver"    # Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    .param p3, "dnsResolver"    # Lcz/msebera/android/httpclient/conn/DnsResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/SchemePortResolver;",
            "Lcz/msebera/android/httpclient/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "socketFactoryRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 70
    const-string v0, "Socket factory registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->socketFactoryRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 72
    if-eqz p2, :cond_0

    .end local p2    # "schemePortResolver":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    :goto_0
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 74
    if-eqz p3, :cond_1

    .end local p3    # "dnsResolver":Lcz/msebera/android/httpclient/conn/DnsResolver;
    :goto_1
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 76
    return-void

    .line 72
    .restart local p2    # "schemePortResolver":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    .restart local p3    # "dnsResolver":Lcz/msebera/android/httpclient/conn/DnsResolver;
    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    goto :goto_0

    .line 74
    .end local p2    # "schemePortResolver":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    :cond_1
    sget-object p3, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    goto :goto_1
.end method

.method private getSocketFactoryRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/config/Lookup;
    .locals 2
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v1, "http.socket-factory-registry"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/config/Lookup;

    .line 82
    .local v0, "reg":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;>;"
    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->socketFactoryRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 85
    :cond_0
    return-object v0
.end method


# virtual methods
.method public connect(Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 18
    .param p1, "conn"    # Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .param p2, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "localAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "connectTimeout"    # I
    .param p5, "socketConfig"    # Lcz/msebera/android/httpclient/config/SocketConfig;
    .param p6, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->getSocketFactoryRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v17

    .line 96
    .local v17, "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;>;"
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;

    .line 97
    .local v2, "sf":Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;
    if-nez v2, :cond_0

    .line 98
    new-instance v3, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " protocol is not supported"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcz/msebera/android/httpclient/conn/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 102
    .local v10, "addresses":[Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/conn/SchemePortResolver;->resolve(Lcz/msebera/android/httpclient/HttpHost;)I

    move-result v16

    .line 103
    .local v16, "port":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v3, v10

    if-ge v12, v3, :cond_3

    .line 104
    aget-object v9, v10, v12

    .line 105
    .local v9, "address":Ljava/net/InetAddress;
    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    if-ne v12, v3, :cond_4

    const/4 v13, 0x1

    .line 107
    .local v13, "last":Z
    :goto_1
    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v4

    .line 108
    .local v4, "sock":Ljava/net/Socket;
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoReuseAddress()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 109
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 111
    new-instance v6, Ljava/net/InetSocketAddress;

    move/from16 v0, v16

    invoke-direct {v6, v9, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 112
    .local v6, "remoteAddress":Ljava/net/InetSocketAddress;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connecting to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 116
    :cond_1
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoTimeout()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move/from16 v3, p4

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 117
    invoke-interface/range {v2 .. v8}, Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;->connectSocket(ILjava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v4

    .line 119
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->isTcpNoDelay()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 120
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoKeepAlive()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 121
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoLinger()I

    move-result v14

    .line 122
    .local v14, "linger":I
    if-ltz v14, :cond_2

    .line 123
    if-lez v14, :cond_5

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v3, v14}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 125
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection established "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .end local v4    # "sock":Ljava/net/Socket;
    .end local v6    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v9    # "address":Ljava/net/InetAddress;
    .end local v13    # "last":Z
    .end local v14    # "linger":I
    :cond_3
    return-void

    .line 105
    .restart local v9    # "address":Ljava/net/InetAddress;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 123
    .restart local v4    # "sock":Ljava/net/Socket;
    .restart local v6    # "remoteAddress":Ljava/net/InetSocketAddress;
    .restart local v13    # "last":Z
    .restart local v14    # "linger":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 130
    .end local v14    # "linger":I
    :catch_0
    move-exception v11

    .line 131
    .local v11, "ex":Ljava/net/SocketTimeoutException;
    if-eqz v13, :cond_7

    .line 132
    new-instance v3, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    move-object/from16 v0, p2

    invoke-direct {v3, v11, v0, v10}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/io/IOException;Lcz/msebera/android/httpclient/HttpHost;[Ljava/net/InetAddress;)V

    throw v3

    .line 134
    .end local v11    # "ex":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v11

    .line 135
    .local v11, "ex":Ljava/net/ConnectException;
    if-eqz v13, :cond_7

    .line 136
    invoke-virtual {v11}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, "msg":Ljava/lang/String;
    const-string v3, "Connection timed out"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 138
    new-instance v3, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    move-object/from16 v0, p2

    invoke-direct {v3, v11, v0, v10}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/io/IOException;Lcz/msebera/android/httpclient/HttpHost;[Ljava/net/InetAddress;)V

    throw v3

    .line 140
    :cond_6
    new-instance v3, Lcz/msebera/android/httpclient/conn/HttpHostConnectException;

    move-object/from16 v0, p2

    invoke-direct {v3, v11, v0, v10}, Lcz/msebera/android/httpclient/conn/HttpHostConnectException;-><init>(Ljava/io/IOException;Lcz/msebera/android/httpclient/HttpHost;[Ljava/net/InetAddress;)V

    throw v3

    .line 144
    .end local v11    # "ex":Ljava/net/ConnectException;
    .end local v15    # "msg":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " timed out. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Connection will be retried using another IP address"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 103
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method public upgrade(Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 9
    .param p1, "conn"    # Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .param p2, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 156
    .local v0, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->getSocketFactoryRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v3

    .line 157
    .local v3, "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;>;"
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;

    .line 158
    .local v4, "sf":Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;
    if-nez v4, :cond_0

    .line 159
    new-instance v6, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " protocol is not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    :cond_0
    instance-of v6, v4, Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    if-nez v6, :cond_1

    .line 163
    new-instance v6, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " protocol does not support connection upgrade"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v1, v4

    .line 166
    check-cast v1, Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 167
    .local v1, "lsf":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v5

    .line 168
    .local v5, "sock":Ljava/net/Socket;
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    invoke-interface {v6, p2}, Lcz/msebera/android/httpclient/conn/SchemePortResolver;->resolve(Lcz/msebera/android/httpclient/HttpHost;)I

    move-result v2

    .line 169
    .local v2, "port":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6, v2, p3}, Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v5

    .line 170
    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 171
    return-void
.end method
