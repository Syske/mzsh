.class final Lcom/trello/rxlifecycle/RxLifecycle$1;
.super Ljava/lang/Object;
.source "RxLifecycle.java"

# interfaces
.implements Lrx/Observable$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trello/rxlifecycle/RxLifecycle;->bindUntilEvent(Lrx/Observable;Ljava/lang/Object;)Lrx/Observable$Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$Transformer",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$lifecycle:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/trello/rxlifecycle/RxLifecycle$1;->val$lifecycle:Lrx/Observable;

    iput-object p2, p0, Lcom/trello/rxlifecycle/RxLifecycle$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/RxLifecycle$1;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lcom/trello/rxlifecycle/RxLifecycle$1;->val$lifecycle:Lrx/Observable;

    new-instance v1, Lcom/trello/rxlifecycle/RxLifecycle$1$1;

    invoke-direct {v1, p0}, Lcom/trello/rxlifecycle/RxLifecycle$1$1;-><init>(Lcom/trello/rxlifecycle/RxLifecycle$1;)V

    .line 78
    invoke-virtual {v0, v1}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lrx/Observable;->takeUntil(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
