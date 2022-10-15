.class public Lcom/tencent/bugly/beta/tinker/TinkerLogger;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;


# static fields
.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_ERROR:I = 0x4

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_NONE:I = 0x5

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerLogger"

.field private static logger:Lcom/tencent/bugly/beta/tinker/TinkerLogger;


# instance fields
.field private level:I

.field private userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/tinker/TinkerLogger;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->logger:Lcom/tencent/bugly/beta/tinker/TinkerLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->level:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->getLogger()Lcom/tencent/bugly/beta/tinker/TinkerLogger;

    move-result-object v0

    iget v0, v0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->level:I

    return v0
.end method

.method public static getLogger()Lcom/tencent/bugly/beta/tinker/TinkerLogger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->logger:Lcom/tencent/bugly/beta/tinker/TinkerLogger;

    return-object v0
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 44
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->getLogger()Lcom/tencent/bugly/beta/tinker/TinkerLogger;

    move-result-object v0

    iput p0, v0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->level:I

    .line 46
    const-string v0, "Tinker.TinkerLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TinkerLogger log level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public static setTinkerLogger(Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;)V
    .locals 1
    .param p0, "userTinkerLogger"    # Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    .prologue
    .line 40
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->getLogger()Lcom/tencent/bugly/beta/tinker/TinkerLogger;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    .line 41
    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    iget v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->level:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 95
    if-nez p3, :cond_2

    .line 96
    .end local p2    # "msg":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    return-void

    .line 95
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    iget v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 107
    if-nez p3, :cond_2

    .line 108
    .end local p2    # "msg":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    return-void

    .line 107
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    iget v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 71
    if-nez p3, :cond_2

    .line 72
    .end local p2    # "msg":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    return-void

    .line 71
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public varargs printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    if-nez p4, :cond_2

    move-object v0, p3

    .line 119
    :goto_0
    if-nez v0, :cond_1

    .line 120
    const-string v0, ""

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 118
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_0
    iget v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->level:I

    if-gtz v0, :cond_1

    .line 59
    if-nez p3, :cond_2

    .line 60
    .end local p2    # "msg":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    return-void

    .line 59
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->userTinkerLogger:Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    iget v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 83
    if-nez p3, :cond_2

    .line 84
    .end local p2    # "msg":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    return-void

    .line 83
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
