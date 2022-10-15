.class public final Lcom/jakewharton/rxbinding/widget/RxProgressBar;
.super Ljava/lang/Object;
.source "RxProgressBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static incrementProgressBy(Landroid/widget/ProgressBar;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/ProgressBar;
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
            "Landroid/widget/ProgressBar;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxProgressBar$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxProgressBar$1;-><init>(Landroid/widget/ProgressBar;)V

    return-object v0
.end method

.method public static incrementSecondaryProgressBy(Landroid/widget/ProgressBar;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/ProgressBar;
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
            "Landroid/widget/ProgressBar;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxProgressBar$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxProgressBar$2;-><init>(Landroid/widget/ProgressBar;)V

    return-object v0
.end method

.method public static indeterminate(Landroid/widget/ProgressBar;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/ProgressBar;
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
            "Landroid/widget/ProgressBar;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxProgressBar$3;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxProgressBar$3;-><init>(Landroid/widget/ProgressBar;)V

    return-object v0
.end method

.method public static max(Landroid/widget/ProgressBar;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/ProgressBar;
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
            "Landroid/widget/ProgressBar;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxProgressBar$4;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxProgressBar$4;-><init>(Landroid/widget/ProgressBar;)V

    return-object v0
.end method

.method public static progress(Landroid/widget/ProgressBar;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/ProgressBar;
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
            "Landroid/widget/ProgressBar;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxProgressBar$5;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxProgressBar$5;-><init>(Landroid/widget/ProgressBar;)V

    return-object v0
.end method

.method public static secondaryProgress(Landroid/widget/ProgressBar;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/ProgressBar;
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
            "Landroid/widget/ProgressBar;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxProgressBar$6;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxProgressBar$6;-><init>(Landroid/widget/ProgressBar;)V

    return-object v0
.end method
