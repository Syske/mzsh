.class Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "TextViewEditorActionOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;->access$100(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 40
    return-void
.end method
