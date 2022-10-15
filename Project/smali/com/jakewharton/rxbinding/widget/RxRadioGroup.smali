.class public final Lcom/jakewharton/rxbinding/widget/RxRadioGroup;
.super Ljava/lang/Object;
.source "RxRadioGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checked(Landroid/widget/RadioGroup;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/widget/RadioGroup;
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
            "Landroid/widget/RadioGroup;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxRadioGroup$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxRadioGroup$1;-><init>(Landroid/widget/RadioGroup;)V

    return-object v0
.end method

.method public static checkedChanges(Landroid/widget/RadioGroup;)Lrx/Observable;
    .locals 1
    .param p0, "view"    # Landroid/widget/RadioGroup;
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
            "Landroid/widget/RadioGroup;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;-><init>(Landroid/widget/RadioGroup;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lrx/Observable;->distinctUntilChanged()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
