.class public final Lcom/jakewharton/rxbinding/widget/RxCompoundButton;
.super Ljava/lang/Object;
.source "RxCompoundButton.java"


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

.method public static checked(Landroid/widget/CompoundButton;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/CompoundButton;
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
            "Landroid/widget/CompoundButton;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxCompoundButton$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxCompoundButton$1;-><init>(Landroid/widget/CompoundButton;)V

    return-object v0
.end method

.method public static checkedChanges(Landroid/widget/CompoundButton;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/CompoundButton;
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
            "Landroid/widget/CompoundButton;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/CompoundButtonCheckedChangeOnSubscribe;-><init>(Landroid/widget/CompoundButton;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static toggle(Landroid/widget/CompoundButton;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/CompoundButton;
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
            "Landroid/widget/CompoundButton;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxCompoundButton$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxCompoundButton$2;-><init>(Landroid/widget/CompoundButton;)V

    return-object v0
.end method
