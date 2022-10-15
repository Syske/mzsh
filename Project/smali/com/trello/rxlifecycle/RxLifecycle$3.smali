.class final Lcom/trello/rxlifecycle/RxLifecycle$3;
.super Ljava/lang/Object;
.source "RxLifecycle.java"

# interfaces
.implements Lrx/Observable$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trello/rxlifecycle/RxLifecycle;->bind(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable$Transformer;
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
.field final synthetic val$correspondingEvents:Lrx/functions/Func1;

.field final synthetic val$sharedLifecycle:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/trello/rxlifecycle/RxLifecycle$3;->val$sharedLifecycle:Lrx/Observable;

    iput-object p2, p0, Lcom/trello/rxlifecycle/RxLifecycle$3;->val$correspondingEvents:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/RxLifecycle$3;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 3
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
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/trello/rxlifecycle/RxLifecycle$3;->val$sharedLifecycle:Lrx/Observable;

    .line 199
    invoke-virtual {v0, v2}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/trello/rxlifecycle/RxLifecycle$3;->val$correspondingEvents:Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/trello/rxlifecycle/RxLifecycle$3;->val$sharedLifecycle:Lrx/Observable;

    .line 200
    invoke-virtual {v1, v2}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/trello/rxlifecycle/RxLifecycle$3$1;

    invoke-direct {v2, p0}, Lcom/trello/rxlifecycle/RxLifecycle$3$1;-><init>(Lcom/trello/rxlifecycle/RxLifecycle$3;)V

    .line 198
    invoke-static {v0, v1, v2}, Lrx/Observable;->combineLatest(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/trello/rxlifecycle/RxLifecycle;->access$100()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/trello/rxlifecycle/RxLifecycle;->access$000()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Lrx/Observable;->takeUntil(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
