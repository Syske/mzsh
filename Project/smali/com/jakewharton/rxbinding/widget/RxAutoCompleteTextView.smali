.class public final Lcom/jakewharton/rxbinding/widget/RxAutoCompleteTextView;
.super Ljava/lang/Object;
.source "RxAutoCompleteTextView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static itemClickEvents(Landroid/widget/AutoCompleteTextView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
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
            "Landroid/widget/AutoCompleteTextView;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
