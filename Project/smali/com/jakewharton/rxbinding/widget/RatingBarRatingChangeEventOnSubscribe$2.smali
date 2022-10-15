.class Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "RatingBarRatingChangeEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;)Landroid/widget/RatingBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 33
    return-void
.end method
