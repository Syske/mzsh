.class final Lrx/joins/Plan0$1;
.super Ljava/lang/Object;
.source "Plan0.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/Plan0;->onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/Observer;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lrx/joins/Plan0$1;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lrx/joins/Plan0$1;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t1"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lrx/joins/Plan0$1;->val$observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method
