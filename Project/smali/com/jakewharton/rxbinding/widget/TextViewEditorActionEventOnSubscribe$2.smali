.class Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "TextViewEditorActionEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;->access$100(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 43
    return-void
.end method
