.class public final Lcom/jakewharton/rxbinding/widget/RxAdapterView;
.super Ljava/lang/Object;
.source "RxAdapterView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static itemClickEvents(Landroid/widget/AdapterView;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static itemClicks(Landroid/widget/AdapterView;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static itemLongClickEvents(Landroid/widget/AdapterView;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    sget-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/widget/RxAdapterView;->itemLongClickEvents(Landroid/widget/AdapterView;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static itemLongClickEvents(Landroid/widget/AdapterView;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lrx/functions/Func1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEventOnSubscribe;-><init>(Landroid/widget/AdapterView;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static itemLongClicks(Landroid/widget/AdapterView;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    sget-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC0_ALWAYS_TRUE:Lrx/functions/Func0;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/widget/RxAdapterView;->itemLongClicks(Landroid/widget/AdapterView;Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static itemLongClicks(Landroid/widget/AdapterView;Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lrx/functions/Func0;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;",
            "Lrx/functions/Func0",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "handled":Lrx/functions/Func0;, "Lrx/functions/Func0<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;-><init>(Landroid/widget/AdapterView;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static itemSelections(Landroid/widget/AdapterView;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static selection(Landroid/widget/AdapterView;)Lrx/functions/Action1;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxAdapterView$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxAdapterView$1;-><init>(Landroid/widget/AdapterView;)V

    return-object v0
.end method

.method public static selectionEvents(Landroid/widget/AdapterView;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(",
            "Landroid/widget/AdapterView",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
