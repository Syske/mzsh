.class public Lcom/trello/rxlifecycle/components/support/RxDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RxDialogFragment.java"

# interfaces
.implements Lcom/trello/rxlifecycle/components/FragmentLifecycleProvider;


# instance fields
.field private final lifecycleSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject",
            "<",
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 14
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

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
    .line 28
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    invoke-static {v0}, Lcom/trello/rxlifecycle/RxLifecycle;->bindFragment(Lrx/Observable;)Lrx/Observable$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public final bindUntilEvent(Lcom/trello/rxlifecycle/FragmentEvent;)Lrx/Observable$Transformer;
    .locals 1
    .param p1, "event"    # Lcom/trello/rxlifecycle/FragmentEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            ")",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    invoke-static {v0, p1}, Lcom/trello/rxlifecycle/RxLifecycle;->bindUntilFragmentEvent(Lrx/Observable;Lcom/trello/rxlifecycle/FragmentEvent;)Lrx/Observable$Transformer;

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
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lrx/subjects/BehaviorSubject;->asObservable()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 82
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 83
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 76
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 77
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 64
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 52
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->START:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->STOP:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 70
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 71
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxDialogFragment;->lifecycleSubject:Lrx/subjects/BehaviorSubject;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
