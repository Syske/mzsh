.class public interface abstract Lcom/trello/rxlifecycle/components/ActivityLifecycleProvider;
.super Ljava/lang/Object;
.source "ActivityLifecycleProvider.java"


# virtual methods
.method public abstract bindToLifecycle()Lrx/Observable$Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation
.end method

.method public abstract bindUntilEvent(Lcom/trello/rxlifecycle/ActivityEvent;)Lrx/Observable$Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            ")",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation
.end method

.method public abstract lifecycle()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            ">;"
        }
    .end annotation
.end method
