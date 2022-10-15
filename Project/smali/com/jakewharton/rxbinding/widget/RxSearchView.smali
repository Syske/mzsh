.class public final Lcom/jakewharton/rxbinding/widget/RxSearchView;
.super Ljava/lang/Object;
.source "RxSearchView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static query(Landroid/widget/SearchView;Z)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "submit"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SearchView;",
            "Z)",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxSearchView$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/RxSearchView$1;-><init>(Landroid/widget/SearchView;Z)V

    return-object v0
.end method

.method public static queryTextChangeEvents(Landroid/widget/SearchView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SearchView;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;-><init>(Landroid/widget/SearchView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static queryTextChanges(Landroid/widget/SearchView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SearchView;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;-><init>(Landroid/widget/SearchView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
