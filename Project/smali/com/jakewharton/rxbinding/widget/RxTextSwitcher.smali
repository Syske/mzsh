.class public final Lcom/jakewharton/rxbinding/widget/RxTextSwitcher;
.super Ljava/lang/Object;
.source "RxTextSwitcher.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static currentText(Landroid/widget/TextSwitcher;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextSwitcher;
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
            "Landroid/widget/TextSwitcher;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextSwitcher$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextSwitcher$2;-><init>(Landroid/widget/TextSwitcher;)V

    return-object v0
.end method

.method public static text(Landroid/widget/TextSwitcher;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextSwitcher;
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
            "Landroid/widget/TextSwitcher;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxTextSwitcher$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxTextSwitcher$1;-><init>(Landroid/widget/TextSwitcher;)V

    return-object v0
.end method
