.class Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "TextViewAfterTextChangeEventOnSubscribe.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->create(Landroid/widget/TextView;Landroid/text/Editable;)Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 25
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 28
    return-void
.end method
