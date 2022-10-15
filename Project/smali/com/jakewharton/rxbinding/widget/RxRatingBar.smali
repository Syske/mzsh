.class public final Lcom/jakewharton/rxbinding/widget/RxRatingBar;
.super Ljava/lang/Object;
.source "RxRatingBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIndicator(Landroid/widget/RatingBar;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/RatingBar;
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
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxRatingBar$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxRatingBar$2;-><init>(Landroid/widget/RatingBar;)V

    return-object v0
.end method

.method public static rating(Landroid/widget/RatingBar;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/RatingBar;
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
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxRatingBar$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxRatingBar$1;-><init>(Landroid/widget/RatingBar;)V

    return-object v0
.end method

.method public static ratingChangeEvents(Landroid/widget/RatingBar;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/RatingBar;
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
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;-><init>(Landroid/widget/RatingBar;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static ratingChanges(Landroid/widget/RatingBar;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/RatingBar;
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
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;-><init>(Landroid/widget/RatingBar;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
