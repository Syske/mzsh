.class public Ldolphin/tools/common/os/MyUncaughtHandler;
.super Ljava/lang/Object;
.source "MyUncaughtHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final uncaughtHandlerToggle:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "paramThread"    # Ljava/lang/Thread;
    .param p2, "paramThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 13
    return-void
.end method
