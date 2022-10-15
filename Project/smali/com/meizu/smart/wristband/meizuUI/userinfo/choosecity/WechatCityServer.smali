.class public Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;
.super Ljava/lang/Object;
.source "WechatCityServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    }
.end annotation


# instance fields
.field private final cnRegex:Ljava/lang/String;

.field private final completeRegex:Ljava/lang/String;

.field private final rootRegex:Ljava/lang/String;

.field private final subRegex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "\\|[A-Za-z]*\\|[^\\|\\n]*"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->rootRegex:Ljava/lang/String;

    .line 23
    const-string v0, "_[^_\\n]*\\|[^\\|\\n]*"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->subRegex:Ljava/lang/String;

    .line 24
    const-string v0, "\\|[^\\|\\n]*\\|[^\\|\\n]*"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->completeRegex:Ljava/lang/String;

    .line 25
    const-string v0, "[\\u4e00-\\u9fa5]"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->cnRegex:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private getAssets(Landroid/content/Context;Ljava/util/Locale;)Ljava/io/InputStream;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmregion4client_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 36
    :goto_1
    return-object v1

    .line 31
    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmregion4client_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1
.end method

.method private toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 184
    .local v0, "arChar":[C
    const/4 v2, 0x0

    .line 185
    .local v2, "iValue":I
    const-string v3, ""

    .line 186
    .local v3, "uStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 187
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 188
    const/16 v4, 0x100

    if-gt v2, v4, :cond_0

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 194
    :cond_1
    return-object v3
.end method

.method private transferred(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v6, "[\\u4e00-\\u9fa5]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 168
    .local v3, "pattern1":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 169
    .local v1, "chars":[C
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v4, "sb":Ljava/lang/StringBuffer;
    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-char v0, v1, v6

    .line 171
    .local v0, "c":C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "str1":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 173
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 174
    invoke-direct {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 179
    .end local v0    # "c":C
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "str1":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public getAddressByCode(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\|[^\\|\\n]*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "regex":Ljava/lang/String;
    const/16 v5, 0x28

    invoke-static {v3, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 137
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 139
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 140
    .local v0, "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i1(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "split":[Ljava/lang/String;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;

    .end local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    aget-object v6, v4, v7

    invoke-direct {v0, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    move-object v5, v0

    .line 147
    .end local v4    # "split":[Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getAddressBySuffix(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\|[^\\|\\n]*\\|[^\\|\\n]*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->transferred(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "regex":Ljava/lang/String;
    const/16 v5, 0x28

    invoke-static {v3, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 154
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 156
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 157
    .local v0, "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "split":[Ljava/lang/String;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;

    .end local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    aget-object v6, v4, v7

    invoke-direct {v0, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    move-object v5, v0

    .line 163
    .end local v4    # "split":[Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getAllAddress(Landroid/content/Context;Ljava/util/Locale;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;>;"
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->getAssets(Landroid/content/Context;Ljava/util/Locale;)Ljava/io/InputStream;

    move-result-object v1

    .line 85
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v6, "streamReader":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 89
    .local v0, "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 90
    const-string v7, "\\|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "split":[Ljava/lang/String;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;

    .end local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-direct {v0, v7, v8}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .restart local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v5    # "split":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getAllData(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v4, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->getAssets(Landroid/content/Context;Ljava/util/Locale;)Ljava/io/InputStream;

    move-result-object v0

    .line 43
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 44
    .local v3, "streamReader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getRoot(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "\\|[A-Za-z]*\\|[^\\|\\n]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 57
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 58
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    return-object v2
.end method

.method public getRootAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;>;"
    const-string v5, "\\|[A-Za-z]*\\|[^\\|\\n]*"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 102
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 104
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 105
    .local v0, "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "split":[Ljava/lang/String;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;

    .end local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    aget-object v6, v4, v7

    invoke-direct {v0, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .restart local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v4    # "split":[Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getSub(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_[^_\\n]*\\|[^\\|\\n]*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "regex":Ljava/lang/String;
    const/16 v4, 0x28

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 72
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 73
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    return-object v3
.end method

.method public getSubAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_[^_\\n]*\\|[^\\|\\n]*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "regex":Ljava/lang/String;
    const/16 v6, 0x28

    invoke-static {v3, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 120
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 122
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 123
    .local v0, "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "split":[Ljava/lang/String;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;

    .end local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    aget-object v6, v5, v8

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-direct {v0, v6, v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .restart local v0    # "address":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v5    # "split":[Ljava/lang/String;
    :cond_0
    return-object v4
.end method
