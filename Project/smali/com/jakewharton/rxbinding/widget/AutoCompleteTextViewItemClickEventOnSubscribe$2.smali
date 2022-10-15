.class Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "AutoCompleteTextViewItemClickEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    return-void
.end method
