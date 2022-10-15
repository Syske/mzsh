.class public final Lcom/jakewharton/rxbinding/widget/RxAdapter;
.super Ljava/lang/Object;
.source "RxAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static dataChanges(Landroid/widget/Adapter;)Lrx/Observable;
    .locals 1
    .param p0    # Landroid/widget/Adapter;
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
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "adapter":Landroid/widget/Adapter;, "TT;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;-><init>(Landroid/widget/Adapter;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
