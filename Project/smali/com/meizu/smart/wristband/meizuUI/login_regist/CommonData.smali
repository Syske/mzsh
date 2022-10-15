.class public Lcom/meizu/smart/wristband/meizuUI/login_regist/CommonData;
.super Ljava/lang/Object;
.source "CommonData.java"


# static fields
.field public static final TOAST_EMAIL_ERROW:I = 0xf

.field public static final TOAST_PASSWORD_ERROW:I = 0xe

.field public static final TOAST_PASSWORD_FORMAT:I = 0x10

.field public static final TOAST_PASSWORD_INVALID:I = 0xb

.field public static final TOAST_PASSWORD_LENGTH_ERROR:I = 0xc

.field public static final TOAST_PASSWORD_NULL:I = 0xa

.field public static final TOAST_USERNAME_ERROW:I = 0xd

.field public static final TOAST_USERNAME_NULL:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isChinaPhoneLegal(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v2, "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$"

    .line 59
    .local v2, "regExp":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 60
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 61
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strEmail"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v2, "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    .line 22
    .local v2, "strPattern":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 23
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 24
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isHKPhoneLegal(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v2, "^(5|6|8|9)\\d{7}$"

    .line 69
    .local v2, "regExp":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 70
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 71
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isPhoneLegal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/CommonData;->isChinaPhoneLegal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/CommonData;->isHKPhoneLegal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRegestCode(Ljava/lang/String;)Z
    .locals 4
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v2, "^[a-zA-Z0-9]{6,20}"

    .line 36
    .local v2, "strPattern":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 37
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 38
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isRegestName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v2, "([a-z]|[A-Z]|[0-9]|[._@])+$"

    .line 29
    .local v2, "strPattern":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 30
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 31
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method
