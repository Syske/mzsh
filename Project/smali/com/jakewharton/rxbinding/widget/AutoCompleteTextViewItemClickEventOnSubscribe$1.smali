.class Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewItemClickEventOnSubscribe.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;->create(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method
