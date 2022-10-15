.class Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;
.super Ljava/lang/Object;
.source "RequestEntityExecHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final WRITE_TO_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private consumed:Z

.field private final original:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 49
    :try_start_0
    const-class v1, Lcz/msebera/android/httpclient/HttpEntity;

    const-string/jumbo v2, "writeTo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/OutputStream;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->WRITE_TO_METHOD:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 1
    .param p1, "original"    # Lcz/msebera/android/httpclient/HttpEntity;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->consumed:Z

    .line 60
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->original:Lcz/msebera/android/httpclient/HttpEntity;

    .line 61
    return-void
.end method


# virtual methods
.method public getOriginal()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->original:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    sget-object v2, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->WRITE_TO_METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->consumed:Z

    .line 77
    :cond_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 80
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 81
    throw v0

    .line 83
    :cond_1
    throw v1
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityExecHandler;->consumed:Z

    return v0
.end method
