.class public Lcom/trello/rxlifecycle/components/RxActivity;
.super Landroid/app/Activity;
.source "RxActivity.java"

# interfaces
.implements Lcom/trello/rxlifecycle/components/ActivityLifecycleProvider;


# instance fields
.field private final lifecycleSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject",
            "<",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public final bindToLifecycle()Lrx/Observable$Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    invoke-static {v0}, Lcom/trello/rxlifecycle/RxLifecycle;->bindActivity(Lrx/Observable;)Lrx/Observable$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public final bindUntilEvent(Lcom/trello/rxlifecycle/ActivityEvent;)Lrx/Observable$Transformer;
    .locals 1
    .param p1, "event"    # Lcom/trello/rxlifecycle/ActivityEvent;
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

    .prologue
    .line 21
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    invoke-static {v0, p1}, Lcom/trello/rxlifecycle/RxLifecycle;->bindUntilActivityEvent(Lrx/Observable;Lcom/trello/rxlifecycle/ActivityEvent;)Lrx/Observable$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public final lifecycle()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lrx/subjects/BehaviorSubject;->asObservable()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 38
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->START:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/RxActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->STOP:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 57
    return-void
.end method
