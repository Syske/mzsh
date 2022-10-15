.class Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "AdapterViewItemClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;)Landroid/widget/AdapterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    return-void
.end method
