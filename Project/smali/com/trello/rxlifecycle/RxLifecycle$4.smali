.class final Lcom/trello/rxlifecycle/RxLifecycle$4;
.super Ljava/lang/Object;
.source "RxLifecycle.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trello/rxlifecycle/RxLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 217
    instance-of v0, p1, Lcom/trello/rxlifecycle/RxLifecycle$OutsideLifecycleException;

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 221
    :cond_0
    invoke-static {p1}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/RxLifecycle$4;->call(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
