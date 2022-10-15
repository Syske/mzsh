.class public Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RxAppCompatActivity.java"

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
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 13
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

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
    .line 27
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

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
    .line 22
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

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
    .line 17
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lrx/subjects/BehaviorSubject;->asObservable()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 63
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 51
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 45
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 39
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->START:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/ActivityEvent;->STOP:Lcom/trello/rxlifecycle/ActivityEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 57
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 58
    return-void
.end method
