.class public final Lcom/litesuits/bluetooth/log/BleLog;
.super Ljava/lang/Object;
.source "BleLog.java"


# static fields
.field private static defaultTag:Ljava/lang/String;

.field public static isPrint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    .line 12
    const-string v0, "Log"

    sput-object v0, Lcom/litesuits/bluetooth/log/BleLog;->defaultTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/Object;

    .prologue
    .line 55
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/litesuits/bluetooth/log/BleLog;->getLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/Object;

    .prologue
    .line 67
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/litesuits/bluetooth/log/BleLog;->getLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static varargs getLogMessage([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "msg"    # [Ljava/lang/Object;

    .prologue
    .line 71
    if-eqz p0, :cond_2

    array-length v2, p0

    if-lez v2, :cond_2

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 74
    .local v0, "s":Ljava/lang/Object;
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "s":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public static i(Ljava/lang/Object;)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 21
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/litesuits/bluetooth/log/BleLog;->defaultTag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .param p0, "m"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/litesuits/bluetooth/log/BleLog;->defaultTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/Object;

    .prologue
    .line 59
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/litesuits/bluetooth/log/BleLog;->getLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 17
    sput-object p0, Lcom/litesuits/bluetooth/log/BleLog;->defaultTag:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/Object;

    .prologue
    .line 51
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/litesuits/bluetooth/log/BleLog;->getLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/Object;

    .prologue
    .line 63
    sget-boolean v0, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/litesuits/bluetooth/log/BleLog;->getLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
