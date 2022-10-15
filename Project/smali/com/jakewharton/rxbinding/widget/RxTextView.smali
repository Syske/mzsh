.class public final Lcom/jakewharton/rxbinding/widget/RxTextView;
.super Ljava/lang/Object;
.source "RxTextView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static beforeTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/TextViewBeforeTextChangeEventOnSubscribe;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static color(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextView$7;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextView$7;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static editorActionEvents(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->editorActionEvents(Landroid/widget/TextView;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static editorActionEvents(Landroid/widget/TextView;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "(",
            "Landroid/widget/TextView;",
            "Lrx/functions/Func1",
            "<-",
            "Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;-><init>(Landroid/widget/TextView;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static editorActions(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->editorActions(Landroid/widget/TextView;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static editorActions(Landroid/widget/TextView;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "(",
            "Landroid/widget/TextView;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;-><init>(Landroid/widget/TextView;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static error(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextView$3;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextView$3;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static errorRes(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextView$4;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextView$4;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static hint(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextView$5;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextView$5;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static hintRes(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextView$6;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextView$6;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static text(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextView$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextView$1;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static textChangeEvents(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static textChanges(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static textRes(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
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
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextView$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextView$2;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method
