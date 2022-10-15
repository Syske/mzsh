.class public Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;
.super Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final DEFAULT_DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    sget-object v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    .line 124
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "datepatterns"    # [Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    .line 119
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V
    .locals 3
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "securityLevel"    # Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    .prologue
    .line 84
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    .line 90
    :goto_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$2;->$SwitchMap$cz$msebera$android$httpclient$impl$cookie$BrowserCompatSpecFactory$SecurityLevel:[I

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown security level"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_0
    const-string v0, "path"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 107
    :goto_1
    const-string v0, "domain"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 108
    const-string v0, "max-age"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 109
    const-string v0, "secure"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 110
    const-string v0, "comment"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 111
    const-string v0, "expires"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 113
    const-string v0, "version"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 114
    return-void

    .line 95
    :pswitch_1
    const-string v0, "path"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$1;

    invoke-direct {v1, p0}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$1;-><init>(Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;)V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isQuoteEnclosed(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    const-string v6, "List of cookies"

    invoke-static {p1, v6}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 177
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x14

    invoke-direct {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 178
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    const-string v6, "Cookie"

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 179
    const-string v6, ": "

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 180
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 181
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 182
    .local v1, "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    if-lez v5, :cond_0

    .line 183
    const-string v6, "; "

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "cookieName":Ljava/lang/String;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "cookieValue":Ljava/lang/String;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->isQuoteEnclosed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 188
    sget-object v6, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    new-instance v7, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    invoke-direct {v7, v2, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 180
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 195
    const-string v6, "="

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 196
    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    .end local v1    # "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    .end local v2    # "cookieName":Ljava/lang/String;
    .end local v3    # "cookieValue":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v4, "headers":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/Header;>;"
    new-instance v6, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v6, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-object v4
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 13
    .param p1, "header"    # Lcz/msebera/android/httpclient/Header;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 128
    const-string v9, "Header"

    invoke-static {p1, v9}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    const-string v9, "Cookie origin"

    invoke-static {p2, v9}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "headername":Ljava/lang/String;
    const-string v9, "Set-Cookie"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 132
    new-instance v9, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized cookie header \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 135
    :cond_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v4

    .line 136
    .local v4, "helems":[Lcz/msebera/android/httpclient/HeaderElement;
    const/4 v8, 0x0

    .line 137
    .local v8, "versioned":Z
    const/4 v5, 0x0

    .line 138
    .local v5, "netscape":Z
    array-length v11, v4

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v3, v4, v9

    .line 139
    .local v3, "helem":Lcz/msebera/android/httpclient/HeaderElement;
    const-string v12, "version"

    invoke-interface {v3, v12}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 140
    const/4 v8, 0x1

    .line 142
    :cond_1
    const-string v12, "expires"

    invoke-interface {v3, v12}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 143
    const/4 v5, 0x1

    .line 138
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 146
    .end local v3    # "helem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_3
    if-nez v5, :cond_4

    if-nez v8, :cond_5

    .line 149
    :cond_4
    sget-object v6, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    .line 152
    .local v6, "parser":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
    instance-of v9, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v9, :cond_6

    move-object v9, p1

    .line 153
    check-cast v9, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v9}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    .line 154
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    .line 155
    .end local p1    # "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v9

    .line 156
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v11

    invoke-direct {v1, v9, v11}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 166
    .local v1, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :goto_1
    const/4 v9, 0x1

    new-array v4, v9, [Lcz/msebera/android/httpclient/HeaderElement;

    .end local v4    # "helems":[Lcz/msebera/android/httpclient/HeaderElement;
    invoke-virtual {v6, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v9

    aput-object v9, v4, v10

    .line 168
    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local v1    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    .end local v6    # "parser":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
    .restart local v4    # "helems":[Lcz/msebera/android/httpclient/HeaderElement;
    :cond_5
    invoke-virtual {p0, v4, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v9

    return-object v9

    .line 158
    .restart local v6    # "parser":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
    .restart local p1    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_6
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "s":Ljava/lang/String;
    if-nez v7, :cond_7

    .line 160
    new-instance v9, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v10, "Header value is null"

    invoke-direct {v9, v10}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 162
    :cond_7
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v0, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 163
    .restart local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 164
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v9

    invoke-direct {v1, v10, v9}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .restart local v1    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "compatibility"

    return-object v0
.end method
