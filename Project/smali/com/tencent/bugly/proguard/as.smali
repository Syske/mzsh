.class public Lcom/tencent/bugly/proguard/as;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "CrashReportInfo"

    sput-object v0, Lcom/tencent/bugly/proguard/as;->a:Ljava/lang/String;

    .line 15
    const-string v0, "CrashReport"

    sput-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/as;->c:Z

    return-void
.end method

.method private static varargs a(ILjava/lang/String;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sget-boolean v2, Lcom/tencent/bugly/proguard/as;->c:Z

    if-nez v2, :cond_0

    .line 65
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/as;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 45
    :pswitch_1
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/proguard/as;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :pswitch_3
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :pswitch_4
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :pswitch_5
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 61
    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(ILjava/lang/Throwable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    sget-boolean v1, Lcom/tencent/bugly/proguard/as;->c:Z

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 94
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v5, v0, p2}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/as;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static varargs f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    if-nez p0, :cond_1

    .line 28
    const-string p0, "null"

    .line 34
    :cond_0
    :goto_0
    return-object p0

    .line 31
    :cond_1
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
