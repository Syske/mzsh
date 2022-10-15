.class public final Lcom/jakewharton/rxbinding/view/RxMenuItem;
.super Ljava/lang/Object;
.source "RxMenuItem.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static actionViewEvents(Landroid/view/MenuItem;)Lrx/Observable;
    .locals 2
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    sget-object v1, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;-><init>(Landroid/view/MenuItem;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static actionViewEvents(Landroid/view/MenuItem;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            "Lrx/functions/Func1",
            "<-",
            "Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;-><init>(Landroid/view/MenuItem;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static checked(Landroid/view/MenuItem;)Lrx/functions/Action1;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxMenuItem$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxMenuItem$1;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static clicks(Landroid/view/MenuItem;)Lrx/Observable;
    .locals 2
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;

    sget-object v1, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;-><init>(Landroid/view/MenuItem;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static clicks(Landroid/view/MenuItem;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            "Lrx/functions/Func1",
            "<-",
            "Landroid/view/MenuItem;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Landroid/view/MenuItem;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;-><init>(Landroid/view/MenuItem;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static enabled(Landroid/view/MenuItem;)Lrx/functions/Action1;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxMenuItem$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxMenuItem$2;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static icon(Landroid/view/MenuItem;)Lrx/functions/Action1;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxMenuItem$3;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxMenuItem$3;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static iconRes(Landroid/view/MenuItem;)Lrx/functions/Action1;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxMenuItem$4;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxMenuItem$4;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static title(Landroid/view/MenuItem;)Lrx/functions/Action1;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxMenuItem$5;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxMenuItem$5;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static titleRes(Landroid/view/MenuItem;)Lrx/functions/Action1;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxMenuItem$6;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxMenuItem$6;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public static visible(Landroid/view/MenuItem;)Lrx/functions/Action1;
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;
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
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/jakewharton/rxbinding/view/RxMenuItem$7;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/RxMenuItem$7;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method
