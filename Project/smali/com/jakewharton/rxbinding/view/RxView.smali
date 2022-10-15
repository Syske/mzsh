.class public final Lcom/jakewharton/rxbinding/view/RxView;
.super Ljava/lang/Object;
.source "RxView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static activated(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxView$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxView$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static attachEvents(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/view/ViewAttachEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static attaches(Landroid/view/View;)Lrx/Observable;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static clickable(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxView$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxView$2;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static clicks(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static detaches(Landroid/view/View;)Lrx/Observable;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static drags(Landroid/view/View;)Lrx/Observable;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;

    sget-object v1, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;-><init>(Landroid/view/View;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static drags(Landroid/view/View;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            "Lrx/functions/Func1",
            "<-",
            "Landroid/view/DragEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Landroid/view/DragEvent;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewDragOnSubscribe;-><init>(Landroid/view/View;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static draws(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static enabled(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxView$3;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxView$3;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static focusChanges(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewFocusChangeOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static globalLayouts(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static hovers(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    sget-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/view/RxView;->hovers(Landroid/view/View;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static hovers(Landroid/view/View;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            "Lrx/functions/Func1",
            "<-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Landroid/view/MotionEvent;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;-><init>(Landroid/view/View;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static layoutChangeEvents(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static layoutChanges(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static longClicks(Landroid/view/View;)Lrx/Observable;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewLongClickOnSubscribe;

    sget-object v1, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC0_ALWAYS_TRUE:Lrx/functions/Func0;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/ViewLongClickOnSubscribe;-><init>(Landroid/view/View;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static longClicks(Landroid/view/View;Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "(",
            "Landroid/view/View;",
            "Lrx/functions/Func0",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "handled":Lrx/functions/Func0;, "Lrx/functions/Func0<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewLongClickOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewLongClickOnSubscribe;-><init>(Landroid/view/View;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static preDraws(Landroid/view/View;Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "(",
            "Landroid/view/View;",
            "Lrx/functions/Func0",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "proceedDrawingPass":Lrx/functions/Func0;, "Lrx/functions/Func0<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;-><init>(Landroid/view/View;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static pressed(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxView$4;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxView$4;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static scrollChangeEvents(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static selected(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxView$5;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxView$5;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static systemUiVisibilityChanges(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static touches(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/view/RxView;->touches(Landroid/view/View;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static touches(Landroid/view/View;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            "Lrx/functions/Func1",
            "<-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Landroid/view/MotionEvent;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe;-><init>(Landroid/view/View;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static visibility(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
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
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/view/RxView;->visibility(Landroid/view/View;I)Lrx/functions/Action1;

    move-result-object v0

    return-object v0
.end method

.method public static visibility(Landroid/view/View;I)Lrx/functions/Action1;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visibilityWhenFalse"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Setting visibility to VISIBLE when false would have no effect."

    invoke-static {v0, v3}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 414
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string v0, "Must set visibility to INVISIBLE or GONE when false."

    invoke-static {v2, v0}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 416
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxView$6;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/RxView$6;-><init>(Landroid/view/View;I)V

    return-object v0

    :cond_2
    move v0, v2

    .line 412
    goto :goto_0
.end method
