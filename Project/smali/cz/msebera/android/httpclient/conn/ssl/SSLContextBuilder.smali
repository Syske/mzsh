.class public Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
.super Ljava/lang/Object;
.source "SSLContextBuilder.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;,
        Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;
    }
.end annotation


# static fields
.field static final SSL:Ljava/lang/String; = "SSL"

.field static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private keymanagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private protocol:Ljava/lang/String;

.field private secureRandom:Ljava/security/SecureRandom;

.field private trustmanagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    .line 76
    return-void
.end method


# virtual methods
.method public build()Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 164
    .local v0, "sslcontext":Ljavax/net/ssl/SSLContext;
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    .line 165
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/net/ssl/KeyManager;

    move-object v2, v1

    :goto_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    .line 166
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/net/ssl/TrustManager;

    :goto_2
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->secureRandom:Ljava/security/SecureRandom;

    .line 164
    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 168
    return-object v0

    .line 162
    .end local v0    # "sslcontext":Ljavax/net/ssl/SSLContext;
    :cond_0
    const-string v1, "TLS"

    goto :goto_0

    .restart local v0    # "sslcontext":Ljavax/net/ssl/SSLContext;
    :cond_1
    move-object v2, v3

    .line 165
    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 166
    goto :goto_2
.end method

.method public loadKeyMaterial(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keyPassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[CLcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    .line 132
    return-object p0
.end method

.method public loadKeyMaterial(Ljava/security/KeyStore;[CLcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keyPassword"    # [C
    .param p3, "aliasStrategy"    # Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 142
    .local v2, "kmfactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v2, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 143
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 144
    .local v3, "kms":[Ljavax/net/ssl/KeyManager;
    if-eqz v3, :cond_2

    .line 145
    if-eqz p3, :cond_1

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 147
    aget-object v1, v3, v0

    .line 148
    .local v1, "km":Ljavax/net/ssl/KeyManager;
    instance-of v4, v1, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_0

    .line 149
    new-instance v4, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;

    check-cast v1, Ljavax/net/ssl/X509KeyManager;

    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    invoke-direct {v4, v1, p3}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;-><init>(Ljavax/net/ssl/X509KeyManager;Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)V

    aput-object v4, v3, v0

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "i":I
    :cond_1
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v3, v4

    .line 155
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 158
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_2
    return-object p0
.end method

.method public loadTrustMaterial(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 1
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public loadTrustMaterial(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 7
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .param p2, "trustStrategy"    # Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 103
    .local v2, "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v2, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 104
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 105
    .local v3, "tms":[Ljavax/net/ssl/TrustManager;
    if-eqz v3, :cond_2

    .line 106
    if-eqz p2, :cond_1

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 108
    aget-object v1, v3, v0

    .line 109
    .local v1, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v4, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    .line 110
    new-instance v4, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    invoke-direct {v4, v1, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;-><init>(Ljavax/net/ssl/X509TrustManager;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)V

    aput-object v4, v3, v0

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_1
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v3, v4

    .line 116
    .restart local v1    # "tm":Ljavax/net/ssl/TrustManager;
    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_2
    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    .line 94
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->secureRandom:Ljava/security/SecureRandom;

    .line 95
    return-object p0
.end method

.method public useProtocol(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public useSSL()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 1

    .prologue
    .line 84
    const-string v0, "SSL"

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public useTLS()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .locals 1

    .prologue
    .line 79
    const-string v0, "TLS"

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    .line 80
    return-object p0
.end method
