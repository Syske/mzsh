.class Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "SearchViewQueryTextChangeEventsOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 44
    return-void
.end method
